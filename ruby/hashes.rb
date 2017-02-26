#One way to display a hash
positions = {striker: 'Ronaldo', midfield: 'Modric', defense: 'Sergio Ramos'}
p positions
#A second way
teams = {'Real Madrid' => 'La Liga', 'Barcelona' => 'La Liga', 'Chelsea' => 'EPL'}
p teams
#A third way
managers = {:Ancelotti => 'Bayern', :Mourinho => 'Man united', :Klopp => 'Liverpool'}
p managers
puts '>>>>>'
#how to call out of a hash, this one would pull Sergio Ramos from the top hash.
p positions[:defense]
