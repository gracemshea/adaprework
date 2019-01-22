# Ex 1
# Write a program that allows a user to play a guessing number game.
# Your program should generate a random number between 0 – 1000 (including 0, but not including 1000).
# Allow the user to make a guess until they guess the answer.
# After each guess you should print "higher" or "lower".
# When they guess it correctly print a winning message along with their total number of guesses.

count = 0
play = true
while play == true

puts "This is a number guessing game. Are you ready to play?"
puts "Pick any number between 0 and 1000."

guess = gets.chomp.to_i
num = rand(999)

while guess != num && play != false
		if guess > num
				print "Hmmm, that's too high. Guess again: "
				guess=gets.to_i
				count+=1
		end

		if guess < num
				print "Hmmm, that's too low. Guess again: "
				guess=gets.to_i
				count+=1
		else
				break
		end
end

puts "Correct!  You guessed the answer in " + count.to_s + " tries!"
print "Would you like to play again? "

answer=gets.chomp!
if
    answer == 'y'
    play = true
  else
    play = false
    puts "OK. Goodbye!"
end
end

# Ex 2
# Write a program that plays duck duck goose.
# Allow the user to enter the player's number they want to call goose on
# and then say "duck" for each player before the "goose"
# then say "goose" for the chosen player.

print "Every player is numbered, 1 to 5."
print " "
print "Which number/player do you want to be the Goose?: "

goose = gets.chomp.to_i

(1...goose).each do |num|
  puts "Player #{num} :Duck "
end
  puts "Player #{goose}: Goose"

# Ex 3
# Write a program that allows a user to enter the number of petals on a flower.
# Then one by one, print “plucking petal #1: they love me!”.
# Alternate “They love me” and “They love me not” as well as increase the petal number for each petal.

puts "How many petals are on your flower? "
petals = gets.chomp.to_i

petals.times do |count|
  print "Plucking petal ##{count + 1}: "
  if count % 2 == 0
    puts "They love me!"
  else
    puts "They love me not."
  end
end

# Ex 4
# You don't trust your users.
# Modify the program below to require the user to enter..
# the same value twice in order to add that value to the total.

puts "Hello! We are going to total some numbers!"
puts "In order to avoid errors, you need to enter a number twice in order for it to be counted."
puts "Enter a negative number to end the program."
puts "> "

total = 0   #sets the total equal to zero to act as container
input = 0   #sets input equal to zero to act as container

# user input retrieved
v1 = gets.chomp.to_i

# ensures user wants to continue
if v1 < 0
  exit
end

v2 = gets.chomp.to_i
if v2 < 0
  exit
end

while v1 > 0 && v2 > 0
  if v1 == v2
    total += v1
  else
    puts "Numbers don't match. Please try again. > "
  end
  v1 = gets.chomp.to_i
  if v1 > 0
    v2 = gets.chomp.to_i
  end
end

puts "Total: #{total}"
