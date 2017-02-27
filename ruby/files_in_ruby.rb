#how to create a file
#You have to declare to ruby which file you want to open.
#Define what you want to do to that file!
#r - reading
# a - appending to files.
# w - just writing to the file.
# w+ Writing and reading.
# a+ Open a file for reading and appending.
# r+ - opening a file for updating, both reading and writing.
File.open("files.txt", 'w+') {|f| f.write("Barca, Real, Valencia")}

#A different way to do this.
file_to_save = File.new("files_two.txt", 'w+')

file_to_save.puts("Jack is a ruby god!")
#We have to save this way.
file_to_save.close
