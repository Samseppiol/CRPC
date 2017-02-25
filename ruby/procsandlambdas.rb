# Argument_count differences
#Main differences: Lambdas count the arguments being passed, procs do not.
# full_name = lambda { |first, last| first + " " + last }
# p full_name.call("Jack", "Bob", "Hage")
# #This will return an error because we are giving it Jack Bob and Hage. Which is
# # three arguments instead of two.


# Proc does not count the arguments, it will just process whatever is in order.

# full_name = Proc.new { |first, last| first + " " + last}
# p full_name.call("jack", 'bob', "hage")

#Returning behavior differences.

#This will return the string.

# def my_method
#   x = lambda { return }
#   x.call
#   p "Text from the method."
# end


#This will not work. Will return nothing.
def my_method
  x = Proc.new{ return }
  x.call
  p "Text from the method."
end

my_method
