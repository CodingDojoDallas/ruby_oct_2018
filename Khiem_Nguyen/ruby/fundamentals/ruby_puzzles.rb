# # 1
# x = [3,5,1,2,7,9,8,13,25,32]
# sum = 0
# x.each { |i| sum += i}
# puts sum

# #2
# x = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# puts x.shuffle.to_s
# puts x.select {|i| i.length > 5 }

# #3
# y = ("a".."z").to_a
# y.shuffle!
# puts y[-1]
# puts y[0]
# puts "This is a vowel!" if y[0] =~ /[aeiou]/

# #4
# arr = Array.new(10) {rand(55..100)}
# arr.sort!
# puts arr
# puts "Minimum: %d Maximum: %d" %[arr.first,arr.last]
# puts "Checking Minimum: %d Maximum: %d" %[arr.min,arr.max]

# #5
# str = (1..5).map {(65+rand(26)).chr}
# puts str

# #6
arr = Array.new(10) {(1..5).map {(65+rand(26)).chr}.join}
p arr
