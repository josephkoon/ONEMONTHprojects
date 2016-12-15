fruits = ["Apples", "Oranges", "Bananas"]
people = ["Mattan","Chris","Lee"]
things = ["Dogs", 55, true, people]

numbers = (1..10).to_a


puts "These are the things: #{things}"
puts "This is thing #1: #{things[0]}"
puts "This is the last thing: #{things[-1]}"


#add things to an array
things << "One more thing.."
puts "Things is now: #{things}" 

#turning a sentence into an array of words
sentence = "Aint nobody got time for that"
words = sentence.split
print words

shuffled_words = words.shuffle
puts shuffled_words
