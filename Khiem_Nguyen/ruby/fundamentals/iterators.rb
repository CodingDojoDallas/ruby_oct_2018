%w[ant bear cat].any? { |word| word.length >= 3 } #=> true
%w[ant bear cat].any? { |word| word.length >= 4 } #=> true
[nil, true, 99].any?                              #=> true


a = [ "a", "b", "c" ]
a.each {|x| print x, " -- " } # => a -- b -- c

["ant", "bear", "cat"].each { |word| print word, "--" } # => ant--bear--cat--

a = [ "a", "b", "c", "d" ]
a.collect { |x| x + "!" }        #=> ["a!", "b!", "c!", "d!"]
a.map.with_index{ |x, i| x * i } #=> ["", "b", "cc", "ddd"]
a                                #=> ["a", "b", "c", "d"]

e.g. (1..4).collect { |i| i*i } # => [1, 4, 9, 16]
e.g. (1..4).collect { "cat" } # => ["cat", "cat", "cat", "cat"]


#detect FINDS FIRST for which block is not false
e.g. (1..10).detect { |i| i %5 == 0 and i % 7 == 0 } # => nil
e.g. (1..100).detect { |i| i %5 == 0 and i % 7 == 0 } # => 35



(1..10).find_all { |i| i % 3 == 0 } # => [3, 6, 9]
[1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]

a = %w{ a b c d e f }
a.select { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]

(1..10).reject { |i| i % 3 == 0 } # => [1, 2, 4, 5, 7, 8, 10]

scores = [ 97, 42, 75 ]
scores.delete_if {|score| score < 80 }   #=> [97]

5.upto(10) { |i| print i, " " } # => 5 6 7 8 9 10
