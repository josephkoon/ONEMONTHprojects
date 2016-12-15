switch = true

while switch
	puts "Do you want to hear a joke? (Yes or No)"
	answer=gets.chomp

	if (answer=="yes" || answer=="Yes" || answer=="y" || answer=="Y")
		puts "Im against picketing, but I dont know how to show it"
		switch=false
	elsif (answer=="no" || answer=="No")
		puts "Fine."
		switch = false
	elsif (answer=="maybe" || answer=="Maybe")
		puts "What's green and has wheels?\nGrass, I lied about the wheels."
		switch=false
	else
		puts "I don't understand"
	end
end