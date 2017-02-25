# WE have been given an array of integers and we only want to display the even ones.
(1..10).to_a select do |x|
  x.even?
end
