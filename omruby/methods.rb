#methods
#also known as functions. think of a language with
#nouns and verbs. variables are nouns, methods are verbs

#two argument
def print_two(thing, another_thing)
	puts "thing 1: #{thing}, thing 2: #{another_thing}"
end

#one argument
def print_one(thing)
	puts "thing: #{thing}"
end

#no argument
def print_none
	puts "I got nothin"
end

print_two("fred", "john")
print_one("yo")
print_none


#add
def add(a, b)
	puts "ADDING #{a} + #{b}"
	a + b # the return is optional
end

age = add(20, 8)

#subtract
def subtract(a, b)
	puts "SUBTRACTING #{a} - #{b}"
	a - b
end

def multiply(a, b)
	puts "MULTIPLYING #{a} * #{b}"
	a * b
end

#multiply 
def divide(a, b)
	puts "DIVIDING #{a} / #{b}"
	a / b
end

height = subtract(73, 4)
weight = multiply(80, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"



#reverse and capitalize
def capitalize_reverse(text)
	text.capitalize.reverse
end

puts capitalize_reverse("fredjohn")
