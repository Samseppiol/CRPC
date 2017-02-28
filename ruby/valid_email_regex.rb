#Building an email matcher to see if a string is a valid email or not.
#Create a constant
VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

#/\A([\w+\-].?)+ This part is looking at all the elements before an @ symbol.
#The rest of it is looking at everything after the @ symbol
#the 'i' on the end specifies this method is insensitive

#Defining a method and passing in the argument 'email'
#defining email to our string above.
def is_valid_email?(email)
  email =~ VALID_EMAIL_REGEX
end

#Apply this method to a few examples.
#this one is a standard email format. This will return valid.
p is_valid_email?("bob@bobby.com") ? "Valid" : "Invalid"
#This one is checking to see if there is an @ symbol. There is not so it should return invalid/.
p is_valid_email?("bobbobby.com") ? "Valid" : "Invalid"
#This one is checking if we are allowed '.' in our emails. Which of course we can so this should be valid.
p is_valid_email?("bo.b@bobby.com") ? "Valid" : "Invalid"
#This one it is checking if there is a '.com' and there is not so it will be invalid.
p is_valid_email?("bob@bobbycom") ? "Valid" : "Invalid"
#This one is checking to make sure underscores were used in our regular expression.This will return valid.
p is_valid_email?("bo_b@bobby.com") ? "Valid" : "Invalid"
