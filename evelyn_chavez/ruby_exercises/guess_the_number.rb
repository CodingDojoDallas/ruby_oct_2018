
def guess_number guess
    number = 25
    if number == guess
        return "You got it!"
    elsif guess > 25
        return "Guess was too high!"
    elsif guess < 25
        return "Guess was too low!"
    end
end  

puts guess_number #insert your guess