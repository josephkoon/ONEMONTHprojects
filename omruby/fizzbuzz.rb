#prints from 1 to 100
#prints 'fizz' for multiples of 3
#prints 'buzz' for multiples of 5
#prints 'fizzbuzz' for multiples of 3 and 5

(1..100).each do |number|
	if (number%3==0 && number%5==0)
		puts "FizzBuzz"

	elsif (number%3==0)
		puts "Fizz"

	elsif (number%5==0)
		puts "Buzz"

	else
		puts number
	end
end