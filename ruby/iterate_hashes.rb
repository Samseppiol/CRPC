goals = {ronaldo: 32, messi: 2, suarez: 28, lewandowski: 16}
#How to grab just the keys from our hash
goals.each_key do |key|
  puts key
end

puts '>>> '

#How to grab just the values.
goals.each_value do |value|
  puts value
end
