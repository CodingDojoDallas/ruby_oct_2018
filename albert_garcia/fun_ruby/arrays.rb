a = [1,10,5,7,8]

puts a.fetch(1)

puts a.at(-1)

a.delete(7)
puts a

puts a.length

puts a.sort
puts a.sort {|a,b| b <=> a}

a.slice!(1)
puts a

a.insert(2, 210)
puts a