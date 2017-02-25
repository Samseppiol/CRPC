array = [23, 24, 34, 65, 78, 89, 12, 47]

array.each do |arr|
  p arr
end


#A different way of doing it.
#Only doing this when it is a small iteration to go through.
array.each { |i| p i }
