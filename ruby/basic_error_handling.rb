#First we print something that will deliberately break and flip an error.
#In this instance we did:
#puts 8/0
#However what we can do, which is bad practice but is just like a band aid is:
#We write begin before the code that is giving us our error and put rescue afterwards.
begin
  puts 8/0
rescue
  puts 'Rescued the error lol'
end
