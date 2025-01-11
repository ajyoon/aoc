#let section_break() = align(center)[❋]

= Introduction

I wrote one hundred prose poems in the year before I gave birth to my child. And I wrote one hundred in the year after. I am interested in the arrangement of these poems.

Conception, pregnancy, childbirth, postpartum. Early humans must have done these things. Early humans must have gone through this progression of events. One event must necessarily precede the next, yet, for me, each event unfolded in a completely novel and unpredictable way, despite being the oldest series of events in history. However, as I was writing about the experience, it seemed that the prosodic relation between the poems was as important, if not more, than the order in which they were written. When I repeat a turn of phrase six months later, I engage, however serendipidously, in a kind of looping, tying together time in a new way. And while the moment of childbirth may have been the key juncture for understanding these events in the moment, I wondered if it would continue to function a lynchpin for the rest of my life.

I also suspected that, as time progressed and my experiences became distorted in my memory, that the whole two year period would become knotty as I incorporated the events into a different kind of story: one that reached further into the past and further into the future, and was less concerned with their original temporal order.

Finally, I wanted the reader of this book to contribute to this integration of time and memory and experience. As readers come to the book, they bring their own interpretation, distorting my experience anew through the lens of their own. Thus, each printing of the book represents a step towards a new order, one influenced by all the readers that came before.

But how to arrange these poems?

Because I was interested in connections beyond the temporal, I considered how well two poems fit together based on their language, mostly thinking about the repetition of words or phrases at their juncture. If one poem ends with "the ending the author didn't want to give" and another starts with "I want to slow down" then the repetition of "want to" suggests these poems are talking to each other, even if they are dealing with different wants. In another case, one poems ends with "the book simpy turns me into a tree" and another starts with "my dog turns and turns and turns", the looping of the word "turns" in the second poem tying itself quite strongly to any other poem that ends with the word "turns". Similarly, the lines "little goat. little whale. little lion." harken in a strange way to the line "my friend builds little tools for poetry".

Once I started to discern these relations between poems, I was delighted to see the connection between the ordering of the poems and a classic problem in computer science: the traveling salesman problem. In this problem, there are a set of cities with known distances between them. The problem is to determine an optimal route for the traveling salesman, such that he (of course it is a he) visits each city once, but travels the minimum distance necessary.

In the case of my poems, I was effectively thinking about the prosodic or linguistic distance between poems. Some poems were quite close ("a little dragon figuring out how to spit fire" and "little dragon, crackling with fire throughout the night") and others were distant ("I'm on precipise of an after-now" and "what will you do about gender?"). I wanted to arrange the poems such that poems that were prosodically similar would be next to each other, but this is actually quite complicated! I had 200 poems on my hands, and each one has some amount of similarity to each other one. Since I didn't want to repeat poems, I had to find an order that put as many similar poems next to each as possible.

If I imagine the poems as cities with known distances between them, and the problem as picking an optimal route for visiting each poem, then I have mapped my poetic problem onto a computational one. I can use ideas about how to solve the traveling salesman problem to arrange the poems in my book.

Part of what delighted me was simply that the traveling salesman problem is such a classic problem, one I learned about in my first algorithms class as a graduate student in computer science. But also, the traveling salesman problem sits distinctly outside the realm of the current interest in computation and writing in 2023 and 2024, namely large language models that can generate fluent-sounding text. The idea that I had accidentally concocted for myself a computational problem that harkened back to a more theoretically sound and mathematically complicated algorithmic arena than the free-wheeling and often corporatized text generators felt beautiful; it seems that there was still a place for computation in my work without disrupting my writing process or engaging in ethically dubious models.

Plus, the traveling salesman problem was technically a very fun problem to work on.

#section_break()

So how was I to arrange these poems? Despite this problem being computationally difficult, one needn't look for the perfect, optimal solution. Instead, one can (and in fact does) look for approximately optimal solutions. The main idea is that first I pick a random order in which to visit the city-poems. Then I randomly swap two of the city-poems. If this represents a better order, I keep this order. If not, I discard it and return to my previous order. Though simple, one can repeat this many, many times (thousands, tens of thousands) and slowly, despite completely random guesses, the order starts to get better and better.

However, there is one extra, important detail. Remember that originally I split the poems in half, the poems before birth and the poems after. For the first printings, these poems are separated as originally written, and each set are ordered using the method above. But as more and more people order the book, the poems start to swap from side to side. So printing 13 may have two poems swapped; printing 36 may have five. Eventually, after about 200 pritnings, about fifty poems are swapped, representing a kind of equilibrium, and then the books start to meander, with the "mixture" level oscillating randomly.

#section_break()

You, dear reader, are reading a particular iteration of this book. This iteration represents a specific amount of mixing between the two sets of poems, and a specific almost-but-not-quite-optimal ordering of those poems. If you are an early reader, the amount of mixing of my memories is low. If you are a later reader, they get progressively more and more mixed up, and finally shuffle around randomly with the distortion of time.

This book, therefore, represents a distinct tour of the poems, influenced by how many readers came before you and the random sweepings of time. The connections made are distinctly yours, because you are bringing your own experience, and you are being coupled to a unique printing of the book. We have, in a way, merged, reader and author and words all, into a special creature that none of us could have quite imagined on our own.

Katy Ilonka Gero \
Cambridge, Massachusetts \
August 2024
