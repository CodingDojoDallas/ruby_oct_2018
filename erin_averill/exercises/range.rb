# .any? { |obj| block}

# .each

# .collect { |obj| block }

# .detect

# .find_all { |obj| block }

# .reject { |obj| block }

# .upto(limit)

# a = (1..5)

# puts "Class Name: #{a.class}"

# y = ('a'..'z')
# puts y.to_a.shuffle.to_s


# def test 
#   puts "You are in the method" 
#   yield 
#   puts "You are again back to the method" 
#   yield 
# end 
# test { puts "You are in the block" }

# def test 
#   yield 5 
#   puts "You are in the method test" 
#   yield 100 
# end 
# test { |i| puts "You are in the block #{i}" }

def square(num)
	puts "num is #{num}"
	puts "yield(num) has a value of #{yield(num)}"
end

square(5) { |i| i*i }