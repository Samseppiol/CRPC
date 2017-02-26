#Defining our variables.
x = 10
y = 100
z = 10

#using a multi if else statement. In this instance 'something else' will be displayed.
#Even if multiple statements are true, ruby will only run the first one.
#If x is equal to y then run this code.
if x == y
  puts 'x is equal to y'
  #if x is greater than z then run this code.
elsif x > z
  puts 'x is greater than z'
  #If neither of these are right, then run this code.
else
  puts 'something else'
end
