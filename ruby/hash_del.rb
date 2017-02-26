#Defining and displaying our hash.
goals = {ronaldo: 32, messi: 2, suarez: 28, lewandowski: 16}
p goals
puts '>>>'
#Calling ronaldo from our hash, will display a value of 32.
p goals[:ronaldo]
puts '>>>'
#Now to the deleting part. Pass in whatever key of the value you want deleted.
#If we call the key messi, then the value 2 will be deleted.
goals.delete(:messi)
#Display our hash again to show messi has been deleted.
p goals
