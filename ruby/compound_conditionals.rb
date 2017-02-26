x = 10
y = 100
z = 10

# A messy long way to do things. There is a far better way.
if x == y
  if x == z
    puts 'Equal to everything'
  end
end

#The better way.
if x == y && x == z
  puts 'The one line if statement.'
end
#If we run our program at this point nothing is going to be printed out.
#because only one of these statements is true, not both of them.

#However if we slightly change it
if x == y || x == z
  puts 'This is how we use an if or statement.'
end
#This will run because x is not equal to y but it is equal to z.

#Lets change it up a bit.
#this will run because ruby runs the parentheses first and will run it even though x is not equal to y.
if (x == 10 && x == z) || x == y
  puts 'Order of operations.'
end

#However if we changed it again
#This will not run because it is not saying or, it is saying && if x is equal to y then run the code.
#Because x is not equal to y it won't run.
if (x == 10 && x == z) && x == y
  puts 'This will not run'
end
