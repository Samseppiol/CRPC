#Create a class
class Football
end

#This is purposely going to throw an error.
# p Football.new.kick

#With metaprogramming what we can do is open up this class. Even though it is declared up top.

class Football
  def kick
    'GOAL!'
  end
end

#But what about now?
# p Football.new.kick

#But what about doing it again?

class Football
  def kick
    'MISSED'
  end
end
p Football.new.kick 
