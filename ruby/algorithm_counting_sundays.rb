#We are going to create an algorithm to find out how many sundays fell on the first month during the twentieth
# century (1 Jan 1901 to 31 Dec 2000)

require 'date'
#lets set up some variables
start_date = Time.local(1901)
#We are passing in the year 2000, the 12th month and the 31st day because unlike the above variable
# which will show january 1 by default we need to be specific with end date.
end_date = Time.local(2000, 12, 31)
#By default sunday counter is set to 0
sunday_counter = 0

#Create a while loop, while the end date is greater than or equal to the start date I want you to keep going.
while end_date >= start_date
  #We need to convert each epic time stamp to a string then check if it is a sunday AND on the 1st of the month
  #We call the string for time method and pass in A, A is going to check for the named day of the week. We want it to be sunday.
  #The second part we call string for time again and we want to see if it is also the first day of the month.
  if end_date.strftime("%A") == "Sunday" && end_date.strftime("%d") == "01"
    #If this is true we want to increment our sunday counter by 1
    sunday_counter += 1
  end
  #We have to state this to be able to iterate over a day because one day has 86400 seconds.
  #basically it is going to start at the end date and go back in time 86400 seconds at a time.
end_date -= 86400
end

p sunday_counter
