#create the hash
person = {name:"Mattan", age:28, height:5*12+10}
puts person[:age]

#set a value for a hash key
person[:city] = "New York"
puts person[:city]

#iterate through the hash and print out key / value pair
person.each do |key, value|
	puts "The key is: #{key} and the value is: #{value}"
end

