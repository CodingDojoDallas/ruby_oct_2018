# #Print 1-255
# (1..255).each { |i| puts i }
#
# # Print odd numbers between 1-25
# (1..255).each { |i| puts i if i.odd? }

# # Print sum
# sum = 0
# (0..255).each do |i|
#     sum = sum + i
#     puts "New Number: #{i} Sum: #{sum}"
# end

# # iterating through an array
# x = [1,3,5,7,9,13]
#
# x.each{ |i| puts i}

# # find max
# x = [-3, -5, -7]
# puts x.max.to_s

# #get average
# x = [2, 10, 3]
# length = x.length
#
# sum = 0
# x.each do |i|
#     sum = sum + i
# end
#
# average = sum/length
# puts sum
# puts length
# puts average

# #array with odd numbers
# y = (1..255).to_a
# y.select! { |i| i.odd? }
# puts y

# #greater than y
# x = [1, 3, 5, 7]
# y = 3
# sum = 0
# x.each {|i| sum = sum + 1 if i > y}
#
# # square the values
# x = [1, 5, 10, -2]
# puts x.collect {|i| i*i}

# # eliminte the negative numbers
# x = [1, 5, 10, -2]
# puts x.each_index {|i| x[i] = 0 if x[i] < 0}

# # max, min, average with HASH
# x = [1, 5, 10, -2]
# gotta wait to learn about hash!

# #shifting the values in the array
# x = [1, 5, 10, 7, -2]
# puts x.each_index{|i| x[i] = x[i + 1]}

# #number to string
# x = [-1, -3, 2]
# puts x.each_index { |i| x[i] = "Dojo" if x[i] < 0}
