#Dish is a great gem if you want to take a hash and turn it into an actual ruby object.
#Require in ruby gems and dish.
require 'rubygems'
require 'dish'


#Lets create a hash.
# Then lets create an array inside that hash, and in that array create 3 more hashes lol

hash = {
  movie: 'Star Wars',

    actors: [
      {age: 22, name: 'Luke'},
      {age: 35, name: 'Han Solo'},
      {age: 400, name: 'Yoda'}
    ],
    favourite: true
}

#print out our Dish and pass in our hash in parentheses.
p media = Dish(hash)
puts '>>>'
#What if we want the movie,
p media.movie
#We can grab the hash within the array just like this.
p media.actors.length
#What about calling one of the names, just treat it like a normal array.
p media.actors[0].name
p media.actors[1].name
p media.actors[2].name
#What about lukes age?
p media.actors[0].age
#What if we want to see if it is our favourite movie?
p media.favourite?
