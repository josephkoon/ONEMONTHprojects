#ask for file name
puts "enter file name: "
filename = gets.chomp

#open and read a file
#puts open(filename).read

#open a file in write mode
#r. read only. begins at beginning of file
#r+. read write. point begins at beinning of file
#w. write only. overwrites the existing file or creates a new one
#w+. read write mode. overwrites the existing file OR create a new file for reading and writing
#a. write only mode. beings at end of existing file. create a new file for writing if it does not exist
#a+. read and write mode. begins at the end of the file. the files opens in append mode. OR creates a new file for reading and writing
file = open(filename, "a+")

#create a new file
print "What should I put in the file? "
line1 = gets.chomp

#create a new file
print "What else should I put in the file? "
line2 = gets.chomp

#write the text to the file
file.write(line1)
file.write("\n")
file.write(line2)

#close the file
file.close




