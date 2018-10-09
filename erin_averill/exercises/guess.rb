# def guess_number guess
# 	number = 25
# 	if guess == number
# 		puts "You got it!"
# 	# end
# 	elsif guess < number
# 		puts "Guess was too low!"
# 	# end
# 	elsif guess > number
# 		puts "Guess was too high!"
# 	end
# end

# guess_number 30 

def guess_number guess
	number = 25
	unless guess == number
		if guess < number
			puts "Guess was too low!"
		elsif guess > number
			puts "Guess was too high!"
		end
	else
		puts "You got it!"
	end
end

guess_number 30