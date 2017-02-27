#We use the same approach this time. We purposely break the code.
#It throws an error, what we do is copy this error, the one displayed in brackets in the terminal when it breaks.

begin
  puts 8/0
  #Except this time we write what the error was after 'rescue'
  #And then we define it to a variable. How cool! In this instance we call it e
rescue ZeroDivisionError => e
  #We then call that variable in a string and display it on the terminal.
  puts "Error occurred: #{e}."
end


#However if we change the original puts error from 8/0 and leave everything else the same
#Rescue won't work because we will get a NoMethodError not a ZeroDivisionError.

#And there is even a way to fix that!
begin
  puts nil + 10
  #in this instance, standarderror is an all round, non specific error explanation.
  #So it doesnt matter what the error is, it will show you in the terminal.
rescue StandardError => f
  puts "Error occurred: #{f}"
end

#this is in no way a fix to the application. It is just a nice convenient way to show reports of the errors.
