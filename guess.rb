puts "Guess a number between 1 and 100"
guess= gets.to_i

number= rand(100) +1
puts number

counting = 1

while guess != number
	if guess > number
	puts "Your guess is too high, guess again!"
	counting += 1
	guess= gets.to_i
	

	elsif guess < number
	puts "Your guess is too low, guess again!"
	counting += 1
	guess= gets.to_i
	end
end

if guess == number
	puts "Bingo!!! You got it in #{counting} tries."
end




