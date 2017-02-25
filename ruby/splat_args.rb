
#Not scalable.
def roster player_1, player_2, player_3
  puts player_1
  puts player_2
  puts player_3
end

roster 'Ronaldo', 'Messi', 'Suarez'


# Much more scalable. This is a splat argument. Treated like an array.
# Splat argument passes everything in as an array.
# Any time using collections use a splat argument.
def roster_two *players
  p players
end


roster_two 'Ronaldo', 'Messi', 'Suarez', 'Ronaldo', 'Messi', 'Suarez'

# Key word based splat argument
# Will use a hash value.
def roster_three **players_with_positions
  players_with_positions.each do |player, position|
    puts "Player: #{player}"
    puts "Position: #{position}"
    puts "\n"
  end
end

data = {
  "Ronaldo": "Left Forward",
  "Messi": "Right Forward",
  "Suarez": "Striker",
  "Casillas": "Goalkeeper"
}

roster_three data



#optional arguments, also use a hash, but allow you the ability to pass any argument you want to the method.
#Then call it using the hasy syntax.

def invoice options={}
  puts options[:company]
  puts options[:total]
  puts options[:something_else]
end


invoice company: 'Google', total: 100.0, something_else: "anything lol"
