= Appendix

== Calculating the distance between poems

A score is assigned to denote the 'distance' between poems, which is then used to determine how to order them. If we have two poems, the score is calculated by looking at the last 10 words of the first poem, and the first 10 words of the second poem. For any word in the first poem that is also in the second poem (just the last / first 10 words) we add:

+ 2 if it's the word _the_, _an_, or _a_
+ 4 if it's a stop word like _i_, _you_, _theirs_, _this_, _these_, _was_, _had_, etc.
+ 10 if the stemmed word matches (e.g. _computation_ and _computer_ would match)
+ 20 if the exact word matches

A higher score means the poems are 'closer'. As a technical note, this is score is inverted such that lower scores are 'closer' (to better match the 'distance' metaphor where small distances indicate better routes). Also of note is that the scores are asymmetric. This means that the score for #smallcaps("poem a") then #smallcaps("poem b") is different that the score for #smallcaps("poem b") then #smallcaps("poem a").

== Ordering the poems

We have two sets of poems: 116 poems pre-birth (let's call them #smallcaps("pre-poems")) and 101 poems post-birth (let's call them #smallcaps("post-poems")). We want to split these into #smallcaps("part 1") and #smallcaps("part 2") of the book. First, we set a mixture level, which is the number of #smallcaps("post-poems") to go in #smallcaps("part 1") (and equals the number of #smallcaps("pre-poems") in #smallcaps("part 2")). Consider a mixture level of 10. In #smallcaps("part 1"), there will be 106 #smallcaps("pre-poems") and 10 #smallcaps("post-poems"). In #smallcaps("part 2"), there will be 10 #smallcaps("pre-poems") and 91 #smallcaps("post-poems").

We use an algorithm called Markov Chain Monte Carlo to order these poems such that poems that are 'closer' to each other, given the scores calculated above, are more likely to be next to each other. The main idea is that we start with a random order of poems, and sum up the 'distance' of all these poems. What do I mean by that? Let's say we have the poems A, B, C, and D. If the poems are in order D, C, A, B, then we sum up the distance of D to C, the distance of C to A, and the distance of A to B. Let's call this the 'tour distance'. So we start with our poems in a random order, and calculate the tour distance. Then we randomly swap two poems, and re-calculate the tour distance. If the distance is lower, this means the poems 'fit better' together and we keep the new order. If the distance isn't lower, we revert the swap. If we do this many, many times (hundreds, thousands) we will eventually do some swaps (randomly!) that make the distance better and better and better.

Below is an example of 10 poems with set distances between them. We can see if that if we order them randomly at first (denoted by the arrows) the distance is quite high. But when we run this algorithm, slowly the ordering gets better, and eventually we arrive at a much better order. This is the main idea, except in the case of this book there are 217 poems, not 10.

#box(width: 100%, [
  #set align(center)
  #image("assets/tour_optimization.png", width: 100%)
])

What about the mixture level? If we truly swap the poems randomly, we end up losing our mixture level. We might start with 10 #smallcaps("post-poems") in #smallcaps("part 1"), but could end up with 51 or 12. So, we put some constraints on the swapping such that we only allow swaps which would keep the mixture level the same. This means that we can swap two #smallcaps("pre-poem") poems, or two #smallcaps("post-poem") poems, or a #smallcaps("pre-poem") and a #smallcaps("post-poem") that come from the same part.


== Setting the mixture level

For each printing of the book, a new mixture level is set. To calculate this mixture level, we start with a mixture level of 0: no poems are swapped, such that #smallcaps("part 1") is only #smallcaps("pre-poems") and #smallcaps("part 2") is only #smallcaps("post-poems"). Then, for each new book, the mixture level randomly changes either one up (+1), not at all (0), or one down (-1). At first, it's more likely the mixture level will go up, but as the mixture level gets close to 50, it's more likely to stay the same. But there is always a small chance it'll go down. The exact probability for the options are:

$
P(+1) &= italic("current mixture level") + 20\
P(0) &= 50\
P(-1) &= 120 - italic("current mixture level")
$

This probability distribution results in a graph looking like this:

#box(width: 100%, [
  #set align(center)
  #image("assets/mixture_level.png", width: 80%)
])

After about 200 books the mixture level reaches around 50, and then for the rest of the books it oscillates between about 30 and about 70, although it is theoretically possible for it to drop again to 0 or rise to 100. However, this is unlikely.
