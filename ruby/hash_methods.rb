goals = {ronaldo: 32, messi: 2, suarez: 28, lewandowski: 16}
p goals
puts '>>>'
#What if we want to add to a hash?
goals[:Bale] = 30
p goals
puts '>>>'
#Something even cooler. What if we want to swap the hash values around
#So the value is the key and the key is the value.
p goals.invert
puts '>>>'
#What if we have two different hashes, and we want to merge them both.
goals_two = goals.invert
p goals
puts '>>>'
p goals_two
puts '>>>'
p goals.merge(goals_two)
puts '>>>'
#Converting a hash to an array.
p goals.to_a
puts '>>>'
#Printing out all the keys in that array.
p goals.keys
puts '>>>'
#Or all the values in that array.
p goals.values
