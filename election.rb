
def election_game(candidates, n_voters)

puts "Greetings voters! Are you ready for the election?"
puts "\nYou can vote for any of the following candidates."
puts "Or, you can write in a name."
puts ""

candidates.each_key { | name | puts name }

# count variables for number of voters (defined line 74)
i = 1

# run loop until all voters reacher
while i <= n_voters

print "\nVoter \##{i}: "

# standardize the capitalization of inputs then save
vote = ((gets.chomp.split).each { |name| name.capitalize! }).join(" ")

begin
  candidates[vote] += 1
rescue
  candidates[vote] = 1
end

# increment
i += 1

end

winner = candidates.max_by { |name, votes| votes }
winner_s = candidates.find_all { |name, votes| votes == winner[1] }

# output announcment
puts "\nAnd here is the final tally!"
puts "\n"

# each candidate printed with votes
candidates.each { |name, votes|
print "#{name} - "
print "#{votes}"

# plural
if votes > 1
puts " votes"

# singular
else
puts " vote"
end
}

# in case of one winner
if winner_s.length == 1
    puts "\nThe winner is #{winner_s[0][0]}!"

# in case of tie
  else
    puts "\nThere is a tie! The winners are: "
    winner_s.each { |name| puts "#{name[0]}" }
  end

end

# candidates hash
candidates1 = {
"Tina Fey" => 0,
"Sasheer Zamata" => 0,
"Amy Poehler" => 0,
}

# number of voters
n_voters = 10

# Call election game
election_game(candidates1, n_voters)
