#The fibonacci sequence is the act of adding a number with the number before hand and getting a result.
#Then repeating those steps. i.e 1 + 1 = 2. 2 + 1 = 3. 3 + 2 = 5. 5+ 3 = 8 and so on.
#The 12th number in this sequence is 144 and is the first number to be triple digits.
#What we want to find out is what number in the sequence will be the first to get to 1000 digits.

def fibonacci_digit_counter
  num1, num2, i = -1, 0, 1

  #Create a while loop and iterate over the digit value of i, convert i to a string then call the length method
  #on it to get the total number of digits there.
  while i.to_s.length < 1000
    num1 += 1
    #i is equal to num2 and num2 is equal to num2
    i, num2 = num2, num2 + i
  end
  #return num1
  num1
end

#Call our method
p fibonacci_digit_counter
#We should get 4782.
