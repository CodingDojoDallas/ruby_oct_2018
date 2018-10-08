def guess_number guess
    number = 25
    if guess == number
        return "You got it!"
    elsif guess < number
        return "Guess too low!"
    elsif guess > number
        return "Guess too high!"
    end
end
print(guess_number 27)