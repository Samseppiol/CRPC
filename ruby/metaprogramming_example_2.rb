# This class is an inbuilt ruby class.
#even without us defining it.
#If that doesn't make sense go in to IRB and type "whateveryouwant".class
class String
  #Eg we have a progra, that needs to block out certain words.
  def censor(bad_word)
    #Basically what we are saying here is if a bad word is passed in, change it to whatever we
    # declare, in this example 'CENSORED'
    self.gsub! "#{bad_word}", "CENSORED"
  end

  #lets give it another method.
  def num_of_chars
    size
  end
end

# Write a string, doesnt have to make sense
#Call .censor on the end and pass in whatever word needs to be blocked.
#In our case we want the word 'fucking' to be censored becuase it is rude.
p "The drug dealer was in trouble with the police.".censor("drug")
puts '>>>'
#Here we use the same string but we are calling the num of chars method.
p "The drug dealer was in trouble with the police.".num_of_chars
