#First we define a method.
def error_logger(e)
  #Open the file and append to it and put in this error message.
  File.open("error_logs.txt", "a") do |file|
    file.puts e
  end
end


begin
  puts 8/0
rescue StandardError => e
  error_logger("Error: #{e} at #{Time.now}")
end
