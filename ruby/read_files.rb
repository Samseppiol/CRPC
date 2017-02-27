#Declaring a variable to File.read.
#Specifiying which file we want to read. In this instance it is the txt file we wrote to in the last exercise.
team_one = File.read("files.txt")
team_two = File.read("files_two.txt")
p team_one

#But what if we want to read a text file and bring it in as an array?
p team_one.split
#I only put >>> this in to separate commands when they run in the terminal to make it more clear for me.
puts '>>>'
#What if we want to bring in multiple files and display them as an array?
p team_one.split(', ') + team_two.split(', ')
puts '>>>'
#We can even declare this array to a variable like so:
team_master = team_one.split(', ') + team_two.split(', ')
#And then we can even loop it! In this example we will make them all capitals! How exciting
team_master.each do |team|
  p team.upcase
end
