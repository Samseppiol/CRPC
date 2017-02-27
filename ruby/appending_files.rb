#
10.times do
  sleep 1
  puts 'Record saved'
  #Here we iopen a designated file. I named mine appendiong.txt. We put the "a" next to it
  #to declare what we want to do to the file. In this case we are appending.
  #We call a ruby inbuilt- Time.New.
  #This can actually be used in a real life application. 
  File.open("appending.txt", "a") {|f| f.puts "Server started at: #{Time.new}" }
end
