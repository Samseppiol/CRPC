#in this exercise we want to create an algorithm for a number letter count.
#Basically if we write out 1, 2, 3, 4, 5 as words so:
#one, two, three, four, five we want to count how many letters were used.
# 3 + 3 + 5 + 4 + 4 = 19.
#That seems easy enough but we want to do it for every number between one and one thousand!
#Well lucky we have a pretty fantastic gem to help us along the way.
require 'humanize'
#Set up some empty variables
no_space_array, total = [], 0
#Create an array set from 1 - 1000 and convert it to an array
#We then map it and pass in our argument/gem humanize on it.
#this has converted every number from 1-1000 into their word format.
# (1..1000).to_a.map(&:humanize)
#now that we have that, we are going to iterate over the humanize array and we are going to call
#the delete method twice to remove spaces and dashes and add each of those cleaned up elements into the array
#then after that we can simply count the letters and add them together and get our result.
#we delete all the apces by saying word.delete and then passing in an empty space.
#And by doing the same thing we can delete all the dashes.
#And then we iterate over all of that and pass in a block to count the total amount of letters.
#the answer should be 24527
(1..1000).to_a.map(&:humanize).each { |word| no_space_array << word.delete(" ").delete("-") }.each { |element|
  total += element.length }
p total
