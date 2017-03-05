# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all the numbers from 1-20

#we need to create a range from 1-20 and convert it to an array
#and all we have to do is call the reduce method and pass in the least common multiple method.
p (1..20).to_a.reduce(:lcm)
