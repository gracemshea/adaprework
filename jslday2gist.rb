#Prompt for a number. If the number is greater than 70, print PASSING; otherwise, print NOT PASSING.

puts "Please enter score."
score = gets.chomp.to_i

if score > 90
  print "PASSING"
else print "NOT PASSING"
end

#Prompt for a string. If the string is equal to green, print GO, otherwise, print STOP.

puts "Please enter color."
color = gets.chomp

if color == "green"
  print "GO"
else print "STOP"
end

#Prompt for a number. If the number is even, print EVEN, otherwise, print ODD.

puts "Please enter number."
x = gets.chomp.to_i

if x.even?
  print "EVEN"
else print "ODD"
end

#Prompt for a number. If the number is evenly divisible by 5, print MULTIPLE OF 5, otherwise, print NOT A MULTIPLE OF 5.

puts "Please enter number."
x = gets.chomp.to_i

if x % 5 == 0
  print "MULTIPLE OF 5"
else print "NOT A MULTIPLE OF 5"
end

#Prompt for a number. If the number is less than 10, print ONE DIGIT. If the number is 100 or greater, print THREE DIGITS, otherwise print TWO DIGITS.

puts "Please enter number."
x = gets.chomp.to_i

if x < 10
  print "ONE DIGIT"
else if x >= 100
  print "THREE DIGITS"
else print "TWO DIGITS"
end
end

#Prompt for a jersey number. If that number is 12, 71, or 80, print That number is retired from the Seattle Seahawks!, otherwise do nothing.

puts "Please enter jersey number."
jersey = gets.chomp.to_i
ret_jerseys = [
  12,
  71,
  80
]
if ret_jerseys.include?(jersey)
  puts "That number is retired from the Seattle Seahawks!"
end


#Prompt for a state. If the state is Washington, Oregon, or Idaho, print This state is in the PNW, otherwise print You should move to the PNW; it’s great here!
puts "Please enter your state."
state = gets.chomp
pnw_state = [
  "Washington",
  "Oregon",
  "Idaho"
]
if pnw_state.include?(state)
  print "This state is in the PNW."
else print "You should move to the PNW; it's great here!"
end

#Prompt for a one of the following: SHORT, TALL, GRANDE, VENTI. Print out the number of ounces that drink includes (8, 12, 16, 20 respectively).

puts "Please enter your beverage size (short, tall, grande, or venti)."
beverage = gets.chomp

if beverage == "short"
  print "That beverage contains 8 ounces."
elsif beverage == "tall"
  print "That beverage contains 12 ounces."
elsif beverage == "grande"
  print "That beverage contains 16 ounces."
elsif beverage == "venti"
  print "That beverage contains 20 ounces."
end

#I feel like there is a more elegant way to do the above... will be looking into it.
#Prompt for rate of pay and hours worked. Calculate gross pay. Provide time-and-a-half for hours worked beyond 40 (e.g., if you get paid $10/hr and work 45 hours in a week, you would gross $475 (40 x 10 + 5 x 15).

puts "Please enter rate of pay"
payrate = gets.chomp.to_f
puts "Please enter hours worked."
hrsworked = gets.chomp.to_f

if hrsworked > 40 then
  excesshrs = hrsworked - 40
else
  excesshrs = 0

grosspay = hrsworked * payrate + (excesshrs * (1.5*payrate))

print "You earned $#{'%.2f' % grosspay.round(2)}."

end

  
#Rewrite the solution to the previous problem adding this modification: do not process any employee if their hours worked is greater than 60, instead display the message Please see manager.

puts "Please enter rate of pay"
payrate = gets.chomp.to_f
puts "Please enter hours worked."
hrsworked = gets.chomp.to_f

if hrsworked > 40 then
  excesshrs = hrsworked - 40
else
  excesshrs = 0
end

grosspay = hrsworked * payrate + (excesshrs * (1.5*payrate))

if excesshrs < 20
  print "You earned $#{'%.2f' % grosspay.round(2)}."
else
  print "See the manager."
end
