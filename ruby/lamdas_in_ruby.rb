
#Standard lamba method
# first_name = lambda { |first, last| first + " " + last}
# p first_name['Jack', 'Hage']

#Correct syntax for a lambda  the '->' symbol
first_name = ->(first, last) {first + " " + last}
p first_name['Jack', 'Hage']
