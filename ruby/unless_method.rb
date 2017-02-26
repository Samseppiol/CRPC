#Define an array for this example.
teams = ['Real Madrid', 'Barcelona', 'Valencia', 'Athletico Madrid']

#Using the unless method
#it is checking to see if the players array is empty.
#So it says unless the players array is empty, then run the code beneath.
#If the teams array above was empty then this code would not run.
unless teams.empty?
  teams.each {|team| puts team }
end
puts '>>>'
#We can put that on one line! Why? Because Ruby.
teams.each {|team| puts team} unless teams.empty?
puts '>>>'
#We can even use an if statement...
teams.each {|team| puts team} if !teams.empty?
