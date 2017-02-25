teams = {
  "Real Madrid" => {
  "Striker" => "Ronaldo",
  "Midfield" => "Toni Kroos",
  "Defense" => "Sergio Ramos"
  },
  "Barcelona" => {
    "Striker" => "Suarez",
    "Midfield" => "Iniesta",
    "Defense" => "Pique"
  }

}

#Great to actually see whats in them lol.
teams.each do |team|
  p team
end

#Nested iterator
teams.each do |team, players|
  puts team
  #One grabs the position, one grabs the player
  #Call position first because it is declared first in the hash above.
  #Call player second because that is the value returned for position.
  players.each do |position, player|
    #String interpolation to display the variables in the order we want.
    #Wouldn't make much sense the other way around.
    puts " #{player} starts at #{position}. "
  end
end
