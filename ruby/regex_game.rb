#We are going to build the wheel of fortune guessing game.
#We are going to use regular expressions!
#but also going to show regular expressions are not always the best tool to use for matching

#Lets create a variable
starting_sentence = 'Jack is the master'
#lets make a sentence array out of our starting sentence and make it downcase.
sentence_array = starting_sentence.split("").map(&:downcase)
#Need to get a count of all the letters in the array minus the empty spaces.
#A cool way to remove spaces from an array is by doing this.
accurate_count = sentence_array - [" "]
#This is where we will define our regular expression using gsub.
#in this instance we want to pass all letters from a-z and capitals.
#this line is very important.
#What this is saying that anywhere in our string that involves a-z or capital a-z
#replace it with whatever we declare next to it. For my example I use '*'.
final_sentence = starting_sentence.gsub(/[a-zA-Z]/, "*").split("")

#Create a while loop.
#Basically it says keep looping until it is less than the accurate count.
# "Hi from matching land!"
#All this is saying is keep looping until all the elements in the array is empty.
#"", "", ""...
while sentence_array.count("") < accurate_count.count
puts 'Guess a letter: '
guess = gets.chomp.downcase

  #Put in a conditional. .include? is what we use to find the values in an array.
  # In other words if you guess the right letter
  if sentence_array.include?(guess)
    letter_index = sentence_array.find_index(guess)
    sentence_array[letter_index] = ""
    final_sentence[letter_index] = guess
    puts "Correct! The sentence is now: #{final_sentence.join}"
  else
    puts "Sorry, that letter is not the right answer, please try again!"
  end
end
