x = (1..5)
puts "Class Name: #{x.class}"

#Range

# .include?(value) => true or false
puts "it does include 3!" if x.include? 3

# it does include 3!

# .last => returns the last object in range
puts "The last number of this range is " + x.last.to_s

# The last number of this range is 5

# .max => returns the maximum value in range
puts "The maximum number of this range is " + x.max.to_s

# The maximum number of this range is 5

# .min => returns the minimum value in range
puts "The minimum number of this range is " + x.min.to_s

# The minimum number of this range is 1

y = ('a'..'z')
puts y.to_a.shuffle.to_s

# ["suffles the alpahabet from a to z"]