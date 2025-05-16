#let section_break() = box(
  width: 100%,
  height: 3em,
  [
    #set align(center)
    #set align(horizon)
    #set text(font: "DejaVu Sans Mono", size: 14pt)
    ❋
  ]
)

= Introduction

I wrote about one hundred prose poems in the year before I gave birth to my child. And I wrote about one hundred in the year after.

Conception, pregnancy, childbirth, postpartum. One event must necessarily precede the next, yet, despite being the oldest series of events in human history, the events felt unstable and unpredictable. Would I ever get pregnant? Would the bleeding and cramping that accompanied my first trimester stop? Would he turn head down? Would labor come, and how, and how would I respond or deal or traverse that treacherous path? As I was writing about the experience, it seemed that the prosodic relation between the poems was as important, if not more, than the order in which they were written. When I repeat a phrase six months later, I engage, however serendipitously, in a kind of looping, tying together time in a new way. And while the moment of childbirth may have been the key juncture for understanding these events, I wondered if it would continue to function as a singular threshold or landmark for the rest of my life.

I also wondered if, as time progressed and my experiences became distorted in my memory, the whole two-year period would become knotty as I incorporated the events into a different kind of story: one that reached further into the past and further into the future, and was less concerned with their original temporal order.

When developing the concept for this book, I wanted the reader to contribute to this integration of time and memory and experience. As readers come to the book (to any book really) they bring their own interpretation, distorting the book's ideas through a lens of their own. Your experiences with conception—whether of child or otherwise—will color your interpretation of my words. And then, if you read it again, or discuss it with a friend, or return to the book years later at your own momentous threshold, you change the book again, experiencing it and therefore making it anew.

I wanted The Anxiety of Conception to physically enact the way books change over time. Thus, each printing of The Anxiety of Conception presents the poems in a new order, representing a step towards a new interpretation, one influenced by all the readers that came before. In the endless sequence of generations, you are reading printing number %BOOK_NUMBER%.

But if the order of the poems is to change with each printing, how was I to arrange them?

Because I was interested in connections beyond the temporal, I considered how well two poems fit together based on their language, mostly thinking about the repetition of words or phrases at their juncture. If one poem ends with "the ending the author didn't want to give" and another starts with "I want to slow down" then the repetition of "want to" suggests these poems are talking to each other, even if they are dealing with different wants. In another case, one poem ends with "the book simply turns me into a tree" and another starts with "my dog turns and turns and turns". The looping of the word "turns" in the second poem ties itself quite strongly to any other poem that ends with the word "turns". Similarly, the lines "little goat. little whale. little lion." harken in a strange way to the line "my friend builds little tools for poetry".

Once I started to discern these relations between poems, I was delighted to see the connection between the ordering of the poems and a classic problem in computer science: the traveling salesman problem. In this problem, there are a set of cities with known distances between them. The problem is to determine an optimal route for the traveling salesman, such that he (of course it is a he) visits each city once, but travels the minimum distance necessary.

In the case of my poems, I was effectively thinking about the prosodic or linguistic distance between poems. Some poems were quite close ("a little dragon figuring out how to spit fire" and "little dragon, crackling with fire throughout the night") and others were distant ("I'm on precipice of an after-now" and "what will you do about gender?"). I wanted to arrange the poems such that poems that were prosodically similar would be next to each other, but this is actually quite complicated! I had 217 poems on my hands, and each poem has some amount of similarity to every other one. Since I didn't want to repeat poems, I had to find an order that put as many similar poems next to each as possible.

If I imagine the poems as cities with known distances between them, and the problem as picking an optimal route for visiting each poem, then I have mapped my poetic problem onto a computational one. I can use ideas about how to solve the traveling salesman problem to arrange the poems in my book.

Part of what delighted me was simply that the traveling salesman problem is such a classic problem, one I learned about in my first algorithms class as a graduate student in computer science. But also, the traveling salesman problem sits distinctly outside the realm of the current interest in computation and writing in 2023 and 2024, namely large language models that can generate fluent-sounding text. The idea that I had accidentally concocted for myself a computational problem that harkened back to a more theoretically sound and mathematically complicated algorithmic arena than the free-wheeling and often corporatized text generators felt beautiful; it seems that there was still a place for computation in my work without disrupting my writing process or engaging in ethically dubious models.

Plus, the traveling salesman problem was technically a very fun problem to work on.

#section_break()

Despite this problem being computationally difficult, one needn't look for the perfect, optimal solution. Is this, too, analogous with conception? Pregnancy is one of those strange periods where there is a focus on optimization: cans of sardines and stacks of coconut water, prenatal vitamins and yoga classes, and the overwhelming cultural message to not fuck this up. But no one’s experience is optimal. So, too, it goes with the traveling salesman.

Instead of an optimal solution, one can (and in fact does) look for approximately optimal solutions. The main idea is that first I pick a random order in which to visit the city-poems. Then I randomly swap two of the city-poems. If this represents a better order, I keep this order. If not, I discard it and return to my previous order. Though simple, one can repeat this many, many times (hundreds, thousands) and slowly, despite completely random guesses, the order starts to get better and better.

However, there is one extra, important detail. Remember that originally I split the poems in half, the poems before birth and the poems after. For the first printings, these poems are split into two sections as originally written, and each section is ordered using the method above. But as more and more people order and read the book, the poems start to swap from side to side. So printing 13 may have two poems swapped; printing 36 may have five. Eventually, after about 200 printings, about fifty poems are swapped, representing a kind of equilibrium, and then the books start to meander, with the "mixture" level oscillating randomly.

#section_break()

You, dear reader, are encountering a particular iteration of this book. This iteration represents a specific amount of mixing between the two sets of poems, my pre- and post-birth poems, and a specific almost-but-not-quite-optimal ordering of those poems. If you are an early reader, the amount of mixing of my memories is low. After all, something just happened. It’s quite clear cut. But if you are a later reader, the poems (and their representation of temporality) get progressively more and more mixed up, and finally shuffle around randomly with the distortion of time.

This book, therefore, represents a distinct tour of the poems, influenced by how many readers came before you and the random sweepings of time. The connections made are distinctly yours, because you are bringing your own experience, and you are being coupled to a unique printing of the book. We have, in a way, merged, reader and author and words all, into a special creature that none of us could have quite conceived on our own.

Katy Ilonka Gero \
Cambridge, Massachusetts \
August 2024
