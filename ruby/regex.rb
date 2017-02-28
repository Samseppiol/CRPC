#Define a basic string.
string = "The quick 12 brown foxes jumped over the 10 lazy dogs."
#lets check if this string has the letter 'O' in it.

p string =~/o/
#In this instance it returns 15, because it gives the letters in the string an index value.
#if you count like an array it will add up to 15.

p string =~/quick/
#because this starts at the 4th letter it will display 4.

#lets look for the letter 'z'
p string =~ /z/ ? "valid" : "invalid"
#this is a shortcut for this:
# if string =~ /z/
#   "valid"
# else
#   "invalid"
# end

#What about capitals, because we dont have a capital Z in our string this will print invalid.

p string =~ /Z/ ? "valid" : "invalid"

#What about aa case insensitive search?
#Simply place 'i' in front of whatever your are searching for.
p string =~ /X/i ? "Valid" : "invalid"


#How to return anything in the string that is an integer.
#Convert it to an enumerator.
#The :scan is a built in ruby method.
#d searches for integers and the + searhes for multiple instances.
#Regexp is a class ruby has for reg ex expressions.
#Last match is one of the methods inside of the class
p string.to_enum(:scan, /\d+/).map  { Regexp.last_match }
#This should return in the terminal 12 and 10.
