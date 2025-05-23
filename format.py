import os
import shutil
import subprocess
from contextlib import contextmanager
from pathlib import Path
from typing import List

_root_dir = Path(__file__).parent
_tmp_dir = _root_dir / "tmp"


def _load_template() -> str:
    with open(_root_dir / "template.typ", "r") as f:
        template = f.read()
    return template


@contextmanager
def _using_tmp_dir(debug: bool):
    try:
        shutil.rmtree(_tmp_dir, ignore_errors=True)
        os.makedirs(_tmp_dir, exist_ok=True)
        yield
    finally:
        if debug:
            print("Skipping tmp dir cleanup for debug mode.")
        else:
            shutil.rmtree(_tmp_dir, ignore_errors=True)


def _ensure_output_dir(output_dir: Path):
    os.makedirs(output_dir, exist_ok=True)


def _copy_assets() -> None:
    shutil.copytree(
        _root_dir / "assets",
        _tmp_dir / "assets",
        dirs_exist_ok=True,
    )


def _copy_paratext() -> None:
    shutil.copytree(
        _root_dir / "paratext",
        _tmp_dir,
        dirs_exist_ok=True,
    )


def _interpolate_paratext(book_number: int) -> None:
    for file_path in Path(_tmp_dir).glob("*.typ"):
        with open(file_path, "r") as f:
            content = f.read()
        modified = content.replace("%BOOK_NUMBER%", str(book_number))
        with open(file_path, "w") as f:
            f.write(modified)


def _format_item(item_text: str) -> str:
    if item_text == "<BREAK>":
        return f"#vertical_break()\n\n"
    else:
        return f"#poem([{item_text}])\n\n"


def _format_template(
    template: str,
    part_1_items: List[str],
    part_2_items: List[str],
    book_number: int,
) -> str:
    part_1 = "\n\n".join([_format_item(item) for item in part_1_items])
    part_2 = "\n\n".join([_format_item(item) for item in part_2_items])
    return (
        template.replace("%PART_1%", part_1)
        .replace("%PART_2%", part_2)
        .replace("%BOOK_NUMBER%", str(book_number))
    )


def _verify_typst_installed() -> None:
    try:
        subprocess.run(["typst", "--version"], capture_output=True, check=True)
    except subprocess.CalledProcessError:
        raise RuntimeError("Error: 'typst' is not installed or not found in PATH.")


def _run_typst(typst_file: Path, output_dir: Path) -> Path:
    pdf_file = output_dir / typst_file.with_suffix(".pdf").name
    _verify_typst_installed()
    subprocess.run(["typst", "compile", typst_file, pdf_file], check=True)
    return pdf_file


def _render_version_internal(
    output_dir: Path,
    output_name: str,
    part_1_items: List[str],
    part_2_items: List[str],
    book_number: int,
    debug: bool,
) -> str:
    _ensure_output_dir(output_dir)
    _copy_assets()
    _copy_paratext()
    _interpolate_paratext(book_number)
    template = _load_template()
    formatted_typst = _format_template(
        template, part_1_items, part_2_items, book_number
    )
    typst_path = _tmp_dir / f"{output_name}.typ"
    with open(typst_path, "w") as f:
        f.write(formatted_typst)
    if debug:
        print(f"Wrote formatted Typst file to {typst_path}")
    pdf_path = _run_typst(typst_path, Path(output_dir))
    if debug:
        print(f"Rendered PDF to {pdf_path}")
    return pdf_path


def render_version(
    output_dir: str,
    output_name: str,
    part_1_items: List[str],
    part_2_items: List[str],
    book_number: int,
    debug: bool = False,
) -> str:
    print(f"formatting book number: {book_number}")
    with _using_tmp_dir(debug):
        return _render_version_internal(
            _root_dir / output_dir,
            output_name,
            part_1_items,
            part_2_items,
            book_number,
            debug,
        )
