#ask for original file name
puts "enter file name to copy: "
filename = gets.chomp

#open file and read it to save content
file_content = open(filename).read

#create a new file name
print "Where do you want to copy it to? "
new_filename = gets.chomp

#create new file and open it in write mode
new_file = open(new_filename, "w")

#write the original content into the new file
new_file.write(file_content)

#close the file
new_file.close