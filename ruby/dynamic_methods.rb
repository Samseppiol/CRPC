#Create a class
class Author
  #use define method then pass in the name you want it to be called.
  #We simply put in a puts to show something in the terminal when we call it
  #to signify it is working.
  define_method("some_method") do
    puts "Some details."
  end

  #That is the exact same thing as doing this:
  def some_method_two
    puts "Some more details."
  end

  #However in this instance some method two would obviously be the better decision.
  #But lets now show in what instance define_method is better.

#This all works but look at how many similarities are going on...
  def fiction_details_one(arg)
    puts "Fiction"
    puts arg
    puts "asdfasdfsd"
  end

  def coding_details_one(arg)
    puts "Coding"
    puts arg
    puts "Ruby"
  end

  def history_details_one(arg)
    puts "History"
    puts arg
    puts "asdfasdfsd"
  end

  #Here is a better way to do it!
  #Create an array of strings
  #%w in parentheses allows us to create an array of strings without having
  #to use quotations and commas. COOL
  genres = %w(fiction coding history)
  #Now iterate over our genres
  #What this is doing is taking our genres array, iterating over them and
  # and with each iteration at run time it will dynamically create a method.
  #so it is going to create three methods because we have three items,
  #The methods will be the genre name then _details.
  #We will have the exact same set of functions avilable as above but will only have to define it one time.
  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "Genre: #{genre}"
      puts arg
      puts genre.object_id
    end
  end
end

#Creating a new variable
author = Author.new
#using said variable to call some_method.
author.some_method
author.some_method_two

#Call our new methods.
author.coding_details("Jordan Hudgens")
author.fiction_details("John Flanagan")
#We are asking if author can respond to our dynamic method coding_details.
#This will return true.
p author.respond_to?(:coding_details)
