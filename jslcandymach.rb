puts "Welcome to the Candy Machine, where all the candy is 0 calories!"
puts "How much amount do you have to spend on this magical candy?\n"
amount = gets.chomp.to_f

if amount == 0
  puts "Please try again, I don't think you put in a valid amount."
  puts "How much amount do you have to spend on this magical candy?"
  amount = gets.chomp.to_f
  puts "$#{'%.2f' % amo unt.round(2)}? Is that all? Well, let's take a look at what we have."
else
  puts "$#{'%.2f' % amount.round(2)}? Is that all? Well, let's take a look at what we have."
end

puts " A = $0.25 Acid Pop"
puts " B = $0.50 Jelly Slug"
puts " C = $0.75 Cockroach Cluster"
puts " D = $1.00 Pumpkin Pasty"
puts " E = $1.25 Chocolate Frog"
puts " F = $1.50 Fizzing Whizzbee"
puts " What would you like?"

selected = gets.chomp.upcase

#Price
p1 = 0.25
p2 = 0.50
p3 = 0.75
p4 = 1.00
p5 = 1.25
p6 = 1.50

def returnchange(amount, price)
  puts "\nExcellent choice, if I do say so myself!"
	puts "Please take your candy, and your $#{'%.2f' % (amount - price)} change."
end

if selected == 'A' && amount >= p1
	returnchange amount, p1
elsif selected == 'B' && amount >= p2
	returnchange amount, p2
elsif selected == 'C' && amount >= p3
 returnchange amount, p3
elsif selected == 'D' && amount >= p4
 returnchange amount, p4
elsif selected == 'E' && amount >= p5
 returnchange amount, p5
elsif selected == 'F' && amount >= p6
 returnchange amount, p6
else
	puts "Your selection was invalid. Either you didn't select A, B, C, D, E, or F or you do not have sufficient funds for this purchase."
end

