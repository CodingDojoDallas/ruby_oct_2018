def guess_number guess
    number = 25
    puts "You got it" if guess == number
    puts "Guess was too high!" if guess > number
    puts "Guess was too low!" if guess < number


end

guess_number 25

# def guess_number guess
#     number = 25
#     if guess == number
#         puts "You got it"
#     elsif guess > number
#         puts "Guess was too high!"
#     elsif guess < number
#         puts "Guess was too low!"
#     end
# end
#
# guess_number 30
