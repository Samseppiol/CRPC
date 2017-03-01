#Lets setup an array.
arr = [1, 3, 4, 5, 6, 12, 1, 2, 3]
#Print the array in the terminal.
p arr
#call grep on the array like this and use p to print it out.
#Pass in whatever you want to find. For this example it will pull 4 out of the array once.
#Because 4 is only listed once.
p arr.grep(4)
puts '>>>'
#Another example.
#This is looking for 1. Because it is mentioned twice in the array it will display it twice.
p arr.grep(1)
