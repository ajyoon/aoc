# Anxiety of Conception Book

## Installation

### With Conda

If this is the first time running the code, create a new environment with [conda](https://docs.conda.io/en/latest/). (You may alternatively want to use the `virtualenv` package; the commands will be slightly different.)

`conda create -n aoc`

Check it has been created, or, if returning to the code, check the environment is available with conda.

`conda info --envs`

Activate the environment.

`conda activate aoc`

Install dependencies.

`conda install --yes --file requirements.txt`

### With Poetry

Alternatively, you can get set up using [poetry](https://python-poetry.org/).

`poetry install`

And activate the environment.

`poetry shell`

## Install Typst

This book is typeset in [Typst](https://typst.app/), please see [their repo here](https://github.com/typst/typst) for installation instructions.

## Running the notebook

The book generator is contained in a [Jupyter Notebook](https://jupyter.org/) with includes an explanation of the algorithm and its implementation. From within your virtual environment, run:

`jupyter notebook anxiety_of_conception_algorithm.ipynb`

and view the notebook in your browser for the rest.
