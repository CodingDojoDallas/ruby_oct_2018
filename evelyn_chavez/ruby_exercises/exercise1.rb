# puts "hello"
# puts "coing"
# puts "dojo"

# puts "hello"
# puts "coding"

# BEGIN {
#     puts "this is in the begining"
# }

# END {
#     puts "this is in the end block"
# }

# x = puts "hello world"
# puts x        # => nil

# Anything in single quotes or double quotes is an instance of the class String.

# # "I am a string"
# # 'I am also a string'

# We can verify by using the .class function we saw earlier to check the class of the instance:

# # "I am an instance of".class
# Using the quotations is just syntactic sugar for instantiating an instance of a String. We can create a String this way:

# # String.new("I am an instance of the String class")

# we cannot perform string interpolation on single quotes. What is string interpolation? It is an easier way to concat two objects to produce a string, even if one of the objects is not a string.

# # "24 plus 8 is #{24 + 8}"         # => "24 plus 8 is 32"
# # '24 plus 8 is #{24 + 8}'         # => "24 plus 8 is #{24 + 8}"
# # "24 plus 8 is " + (24 + 8).to_s  # => "24 plus 8 is 32"

# "24 plus 8 is " + (24 + 8) # => TypeError: no implicit conversion of Fixnum into String

# "".empty?      # => true
# "hello".empty? # => false

# "hello".length # => 5

# "hello".split                 # => ["hello"] 
# "hello".split("")             # => ["h", "e", "l", "l", "o"]
# "oscar@gmail.com".split("@")  # => ["oscar", "gmail.com"] 

# str = "bar"
# str[0] = "c"
# puts str # => "car"

# word = "hello"
# word.capitalize # => "Hello"
# puts word # => "hello"
# word.capitalize! # => "Hello"
# puts word # => "Hello"

# age = 22
# if age >= 21
#   puts "Welcome to the party"
# else
#   puts "Not yet"
# end

# number = 15
# if number % 3 == 0 && number % 5 == 0
#   puts "FizzBuzz"
# elsif number % 3 == 0
#   puts "Fizz"
# elsif number % 5 == 0
#   puts "Buzz"
# end

# if !(age < 21)
#     puts "Welcome to the party"
#   else
#     puts "Not yet"
#   end

# unless age < 21
#     puts "Welcome to the party"
#   else
#     puts "Not yet"
#   end

# n Ruby, only two things are false: nil and false. What does this mean? This means that an empty string returns true.

# if ""
#     puts "I am positive"
#   end
#   if 0
#     puts "I am positive"
#   end

#   unless nil
#     puts "I am negative"
#   end
#   unless false
#     puts "I am negative"
#   end
  
# puts "I am positive" if "hello"
# puts "I am positive" if 24
# puts "I am negative" unless nil
# puts "I am negative" unless false

# i = 0
# num = 5
# while i < num do
#    puts "Inside the loop i = #{i}"
#    i +=1
# end

# If you want to escape out of the while loop before it's completed, you can use break:

# i = 0
# num = 5
# while i < num do
#   puts "Inside the loop i = #{i}"
#   i += 1  
#   break if i == 2  
# end

# for loop

# for i in 0..5 
#     puts "Value of local variable is #{i}" 
#   end

# We can use break to stop a for loop before it reaches the end, the same way we would with a while loop.

# for i in 0..5 
#     puts "Value of local variable is #{i}" 
#     break if i == 2
#   end

# Another useful method is next. We'll use next, if instead of terminating the for loop, we want to just skip to the next index.

# for i in 0..5 
#     next if i == 2
#     puts "Value of local variable is #{i}"   
#   end

# Ruby methods

# def hello_world
#     puts "hello world"
#   end
# hello_worlds

# input

# def say_hello name1, name2
#     puts "hello, #{name1} and #{name2}"
#   end
#   say_hello "oscar", "eduardo" # => "hello, oscar and eduardo"

# We can pass parameters into a function the same way we would in any other language. For a function with a lot of parameters, feel free to use parenthesis for readability.
  
# def say_hello(name1, name2)
#     puts "hello, #{name1} and #{name2}"
#   end
#   say_hello("oscar", "eduardo") # => "hello, oscar and eduardo"

# Default Parameters
# When we want to add default values for our parameters, we can use the syntax below:

# def say_hello name1="oscar", name2="shane"
#     puts "hello, #{name1} and #{name2}"
#   end
#   say_hello "oscar"    # => "hello, oscar and shane"

# Output
# Default Return

# def say_hello name1="oscar", name2="shane"
#     "hello, #{name1} and #{name2}"
#   end
#   puts say_hello "oscar", "eduardo"   # => "hello, oscar and eduardo"

# def say_hello name1, name2
#     if name1.empty? or name2.empty?
#       return "Who are you?!"
#     end
#     # Doesn't reach the last line because we used return
#     "hello, #{name1} and #{name2}"
#   end
#   puts say_hello "", ""

# puts "Ruby! " * 2
# Ruby! Ruby!

# puts "Chunky" << "Bacon"
# ChunkyBacon

# puts "Chunky"[2..3]
# un

# puts "ruBy".capitalize
# Ruby

# puts "".empty?
# true

# puts "team".include?("i")
# false

# puts "matz".length
# 4

# puts "hello" if nil
# will NOT schow on screen

# puts "goodbye" if []
# will show on screen

# puts "ruby" unless nil
# will show on screen

# puts "matz" unless []
# will NOT show on screen


  
  


  
  
  

  







