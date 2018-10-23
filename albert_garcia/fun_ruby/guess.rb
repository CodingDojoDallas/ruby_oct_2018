def guess_number guess
    number = 25
    if guess < number
        return "Guess was too low!"
    elsif guess > number
        return "Guess was too high!"
    else
        return "You got it!"
    end
end 

puts guess_number 25
