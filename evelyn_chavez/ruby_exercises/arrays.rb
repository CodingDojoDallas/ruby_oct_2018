a =["Matz", "Guido", "Dojo", "Choi", "John"]

puts a.at(3)
# Choi

puts a.fetch(1)
# Guido

puts a.delete("Dojo")
# deletes Dojo and returns
# Matz
# Guido
# Choi
# John

puts a.reverse
# John 
# Choi
# Dojo
# Guido
# Matz

puts a.length
# 5

puts a.sort
# Choi
# Dojo
# Guido
# John
# Matz

puts a.slice(1..3)
# Guido
# Dojo
# Choi


puts a.shuffle
#suffles the array
# John 
# Choi
# Dojo
# Guido
# Matz

puts a.join
# MatzGuidoDojoChoiJohn

puts a.insert(2, "evelyn")
# Matz
# Guido
# evelyn
# Dojo
# Choi
# John

puts a.values_at(0, 2, 4)
# Matz
# Dojo
# John