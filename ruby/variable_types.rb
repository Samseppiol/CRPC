#Local variables::::
#   Local variable is a varaibale that limits itself to within the local scope to wherever it is declared.
#Only available within that package. E.G
10.times do
  #X is defined here.
  x = 10
  p x
end
#try to call x here and it does not work.


#Global Variables:::
10.times do
  #put the dollar sign inside of the loop and outside of the loop.
  $y = 11
end
#Making $y a global variable. Horrible idea.
p $y


#Instance Variables ::::
@ronaldo = 'Ronaldo'


#Constant Variable
TEAM = "Real Madrid"
TEAM = "Barcelona"


#Class variable
class MyClass
  @@teams = ["A's", "Real"]
  puts @@teams
end
