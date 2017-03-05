#In this exercise we want to create an algorithm to process factorial digit sums.
#A factorial first of all for e.g is we have the number 10. 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1 is a factorial
#A factorial digit sum is the sum of the individual digits of the result of the factorial.
#For example 10 factorial = 3628800 the digit sum would be 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27
#We want to find the sum of digits in the number 100

def factorial_value_sum_generator(factorial)
  #setup an array, range from 1-100
  #this is our going backwards multiplication thing ie 10 * 9 * 7 etc
  #We iterate over it with each. We pass in i as a variable, and we are saying factorial is equal to
  # factorial multiplied by i minus i. So for example if factorial number was 10. This would be the same as
  # saying 10 + 10* i - 1 in this case i will be 10 - 1 which is
  #So this will be the sum of 10 + 10 * 9
  arr = (1..factorial).to_a.reverse.each { |i| factorial += factorial * (i - 1) }
  #Create the sum of the digits, convert it to a string and split them like our exercise earlier.
  #Once we split them we call map on them and then convert them to an integer. Then call .inject on them
  #so we can add all the values together.
  factorial.to_s.split(//).map(&:to_i).inject(:+)
end

p factorial_value_sum_generator(100)
