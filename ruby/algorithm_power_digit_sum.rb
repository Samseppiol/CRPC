#We want to find the sum of the digits in 2 to the power of 1000
#First we need to find out the result of 2 to the power of 1000
#We dont really care if it is an integer, we need it as a string to be able to separate the values.
#We convert the total number to a string.
# p (2 ** 1000).to_s
#What we want to do is convert it to an array.
# p (2 ** 1000).to_s.split(//)
#We cant really add string values so we need to convert them back to integers.
# p (2 ** 1000).to_s.split(//).map(&:to_i)
#And finally we need to run the inject method on it and the plus sign to add them all together.
p (2 ** 1000).to_s.split(//).map(&:to_i).inject(:+)
