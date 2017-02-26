#Declaring the array, I use la liga teams again.
teams = ['Real Madrid', 'Barcelona', 'Valencia', 'Athletico Madrid']
#Displaying the array in the terminal
p teams
puts '>>>>>>>'
#But I want to add Athletic Bilbao to the array. I use .push to push it in to the array. No pun intended.
p teams.push('Athletic Bilbao')
puts '>>>>>>>'
#You can even push more than one value, lets add two more teams
p teams.push('Osasuna', 'Real Sociedad', 'Real Betis')
puts '>>>>>>>'
#Now to use the pop method. The pop method calls the last added item.
#In this case it will be Real Betis
p teams.pop
puts '>>>>>>>'
#And we can even use .pop to define it to a variable.
#Seeing as we already called Real betis, x will equal to Real Sociedad.
x = teams.pop
p x
