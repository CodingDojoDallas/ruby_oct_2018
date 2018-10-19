# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. 
# Print the sum of all numbers in the array.
#  Also have the function return an array that only 
#  include numbers that are greater than 10 
#  (e.g. when you pass the array above, it should return an array with 
#  the values of 13,25,32 - hint: use reject or find_all method)

c = [3,5,1,2,7,9,8,13,25,32]
def question_one arr 
	puts arr.sum
	arr.each { |i| puts i if i > 10 }
end

question_one c

# Create an array with the following 
# values: John, KB, Oliver, Cory, Matthew, Christopher.
# Shuffle the array and print the name of each person.
# Have the program also return an array with names that are longer than 5 characters.

names = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

def do_stuff arr
	puts arr.shuffle
	new_array = []
	arr.each { |i| new_array.push(i) if i.length >= 5 }
	return new_array
end

do_stuff names

# Create an array that contains all 26 letters in the alphabet 
# (this array must have 26 values). Shuffle the array and display the last 
# letter of the array. Have it also display the first letter of the array. 
# If the first letter in the array is a vowel, have it display a message.

alpha = ("a".."z").to_a

def shuffle_letters arr
	new_arr = arr.shuffle
	puts new_arr.first 
	puts new_arr.last
	puts "The first letter is a vowel!" if ['a','e','i','o','u','y'].include?(new_arr.first) 
end

shuffle_letters alpha

# Generate an array with 10 random numbers between 55-100.

generator = Array.new(10) { rand(55..100)}

# Generate an array with 10 random numbers between 55-100 and 
# have it be sorted (showing the smallest number in the beginning).
# Display all the numbers in the array. Next, display the minimum value 
# in the array as well as the maximum value

puts generator.sort!
puts generator.first
puts generator.last

# Create a random string that is 5 characters long 
# (hint: (65+rand(26)).chr returns a random character)

new_str = (1..5).collect { (65+rand(26)).chr } 
puts five_long = new_str.join

# Generate an array with 10 random strings that are each 5 characters long

last_arr = []

5.times { |i| last_arr.push(new_str.to_s) }
puts last_arr
