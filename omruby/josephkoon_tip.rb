puts "How much was the bill?"
bill = gets.chomp.to_f

puts "15\% tip is $#{bill*0.15}"
puts "18\% tip is $#{bill*0.18}"
puts "20\% bill is $#{bill*0.20}"