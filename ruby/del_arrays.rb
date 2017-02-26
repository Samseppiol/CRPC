#You can store anything in an array.
x = [1, 2, 4, 'asdf', 45556, 'test', true]
#Displays the array.
puts x
puts ">>>>>>  "
puts 'This is how many items we have in our array:'
#Displays how many items we have in our array. For this ionstance we have seven items.
puts x.length
#Puts > to separate things in the console to show exactly what we are doing.
puts ">>>>>>>  "
#We are deleting the number 4 out of the array.
x.delete(4)
#After the delete command, our array now has 6 items.
puts x.length
#We can also delete an item based on the order it is in, in the array.
x.delete_at(5)
puts ">>>>>>>>> "
#Now that we have deleted two items from our array in two different ways we only have five things left.
puts x
puts ">>>>> "
puts x.length
#We can also pull out a value from our array and set it to a variable!
y = x.delete_at(2)
puts "This is the value we pulled from our array: #{y}."

#Declaring a new array for the next example.
b = [100, 200, 300, 400, 500, 600]
#Basically an if statement stating our declared variable of value is less than 350, then delete it.
b.delete_if {|value| value < 350}
#Printing our array to the screen. We can now see only the values higher than 350 are displayed.
puts b
