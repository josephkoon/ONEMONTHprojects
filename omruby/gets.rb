#prints out text
puts "What's your name? " 
#takes user input and removes new line
name = gets.chomp 

#prints out text
print "How old are you? " 
#takes number user input and removes new line
age = gets.chomp.to_i 
#divides age by 7
age_in_dog_years = age/7 

#prints final statement
puts "Hello #{name}, you're #{age_in_dog_years} in dog years. Woof!" 