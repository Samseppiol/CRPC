require 'ostruct'

class Author
  attr_accessor :first_name, :last_name, :genre

  def author
    #calling our ostruct gem. Passing in the paramters of the class.
    #A mockup data base that we can use.
    OpenStruct.new(first_name: first_name, last_name: last_name, genre: genre)
  end

  #Basically this method has parameters of a method name, an array and a block.
  def method_missing(method_name, *arguments, &block)
    #pass in a conditional
    #We use a regular expression here to basically say, any
    # kind of string that has author_ in it then it will go inside this conditional
    if method_name.to_s =~ /author_(.*)/
      #we call our defined author method above. With .send
      #.send basically means passing the method name.
      #$1 sends the first argument and a full list of arguments in the array and the block.
     author.send($1, *arguments, &block)
   else
     super
    end
  end

  #Going to take in the method name, include private methods? which we dont.
  def respond_to_missing?(method_name, include_private = false)
    #Basically this is doing the exact same thing as the above regular expression
    #  method, except we are doing it on one line of code.
    #Taking the method name as the argument, converting it to a string, and checking
    #to see if it starts with author and if it does it will return true
    #if false then it will return super.
    method_name.to_s.start_with?('author_') || super
  end
end


author = Author.new
author.first_name = 'Jack'
author.last_name = 'Hage'
author.genre = 'Noob'

p author.first_name

p author.author_genre
#this will return false which is a bad thing.
#so we wrote in our respond to missing method.
p author.respond_to?(:author_genre)
