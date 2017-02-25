#Methods that can be stored inside variables. Then called separately.

#First argument is first, second is last. Only available within the code block
full_name = Proc.new { |first, last| first + " " + last }

p full_name["Jack", "Hage"]
