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
end


author = Author.new
author.first_name = 'Jack'
author.last_name = 'Hage'
author.genre = 'Noob'

p author.first_name

p author.author_genre
