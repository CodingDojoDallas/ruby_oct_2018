# a = {first_name: "Michael", last_name: "Choi"}
# b = {first_name: "John", last_name: "Doe"}
# c = {first_name: "Jane", last_name: "Doe"}
# d = {first_name: "James", last_name: "Smith"}
# e = {first_name: "Jennifer", last_name: "Smith"}
# names = [a, b, c, d, e]

# a = names.length 
# puts "You have #{a} in the 'names' array"
# names.each {|i| puts "The name is #{i[:first_name]} #{i[:last_name]}"}

a = "coding"
b = "coding"
c = :dojo
d = :dojo
puts a.object_id # => 70366642877120
puts b.object_id # => 70366642877100
puts c.object_id # => 897948
puts d.object_id # => 897948

