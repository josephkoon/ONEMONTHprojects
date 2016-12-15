fruits = ["Apples", "Oranges", "Bananas"]

fruits.each do |fruit|
	puts "This time the fruit is: #{fruit}"
end

(1..10).each do |number|
	puts "#{number} squared is #{number*number}"
end

(1..10).each { |number| puts "#{number} squared is #{number*number}"}
