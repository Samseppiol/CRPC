#Define an array
arr = ['hey.rb', 'there.rb', 'index.html']
#print the array
p arr
#What if we want to find all the files that have .rb in them?
#Passing in a regular expression to call anything that has .rb in it.
# And then calling .map on it. Then passing in another block
#saying we want to call the -4 value from the array.
p arr.select{|x| x =~ /\.rb/}.map{|x| x[0..-4]}

#however we can use grep to make this more efficient.
#Using grep we can simplify this massively.
#We're grabbing the .rb in a regular expression.
#the $1 is
#Far more elegant and clean code achieving the exact same result.
p arr.grep(/(.*)\.rb/){$1}
