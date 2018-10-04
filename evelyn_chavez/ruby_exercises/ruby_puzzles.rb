# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
# ary = [3,5,1,2,7,9,8,13,25,32]
# puts ary.reduce(:+)
# puts ary.reject { |number| number < 10 }

# Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
# persons_array = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# puts persons_array.select { |person| person.length > 5 }
# persons_array.shuffle.each { |person| puts person}

# Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.. 
# letters_array = ("a".."z").to_a
# puts letters_array.shuffle.last
# puts letters_array.shuffle.first
# shuffled = letters_array.shuffle
# puts "#{shuffled.first} is a vowel" if ["a","e","i","o","u"].include? shuffled.first

# Generate an array with 10 random numbers between 55-100.
# random_array = []
# 10.times { random_array << rand(55..100) }
# puts random_array

# Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the array. Next, display the minimum value in the array as well as the maximum value
# random_array = []
# 10.times { random_array << rand(55..100) }
# puts random_array.sort
# # puts random_array.max
# # puts random_array.min


# # Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character; use a map function and a range to do this).
# str = ""
# 5.times { str << rand(65..90).chr }
# puts str

# # Generate an array with 10 random strings that are each 5 characters long
# string_array = []
# 10.times do 
#   str = ""
#   5.times { str << rand(65..90).chr }
#   string_array << str
# end
# puts string_array