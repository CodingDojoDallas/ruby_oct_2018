a = ["Erin", "Angela", "Sujata", "Roger"]
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]
c = ["Erin", 9]

puts a[0]
puts a[1]
x = (a+b)-c

puts b.class
puts b.shuffle.join("-")

puts x.to_s

a.delete('Erin')

puts "length of b is #{b.length}"

a.reverse

a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"