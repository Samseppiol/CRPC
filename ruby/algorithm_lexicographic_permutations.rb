#We want to create an algorithm to calculate lexicographic permutations.
#lexicographic permutations are the different sequences in which numbers can be used.
#For example the numbers 1, 2, 3 can be used as 012, 021, 102, 120, 201, 210
#That sounds easy... right? But we want to find the millionth sequence from digits 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
#Well lucky for us, we have ruby!

#Lets create an array and calla  special method called permutation.
#We then have to convert that to a second array and specify the value we want to go up to.
#We call 999_999 value. Permutation returns an enumerator opject
#this will return 2783915460 and we just did it in one line of code.
p [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].permutation.to_a[999_999].join
