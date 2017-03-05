#In this exercise we are going to write an algorithm that finds all the prime numbers between zero and two million!
#This gives us the ability to bring in some prime methods later.
require 'prime'
#this is going to iterate over whatever the range we tell it to and return it into an array.
#By default start out at zero up to 2 million. We can use underscores instead of commas because ruby is amazing
prime_array = Prime.take_while { |p| p < 2_000_000}
#Here we print it and it shows us every prime method between 0 and 2 million.
# p prime_array

#But we want to update this array
#What we are doing here is the total count of all prime numbers between zero and 2 million.
#Which is just adding all those prime numbers together.
total_count = prime_array.inject {|sum, x| sum + x }

p total_count
#This should return
#142,913,828,922
