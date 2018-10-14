a = [ "a", "b", "c", "d", "e" ]
a.at(0)     #=> "a"
a.at(-1)    #=> "e"

a = [ 11, 22, 33, 44 ]
a.fetch(1)               #=> 22
a.fetch(-1)              #=> 44
a.fetch(4, 'cat')        #=> "cat"
a.fetch(100) { |i| puts "#{i} is out of bounds" }
                         #=> "100 is out of bounds"

[ "a", "b", "c" ].reverse   #=> ["c", "b", "a"]
[ 1 ].reverse               #=> [1]

[ 1, 2, 3, 4, 5 ].length   #=> 5
[].length                  #=> 0

a = [ "d", "a", "e", "c", "b" ]
a.sort                    #=> ["a", "b", "c", "d", "e"]
a.sort { |x,y| y <=> x }  #=> ["e", "d", "c", "b", "a"]


#slice
a = [ "a", "b", "c", "d", "e" ]
a[2] +  a[0] + a[1]    #=> "cab"
a[6]                   #=> nil
a[1, 2]                #=> [ "b", "c" ]
a[1..3]                #=> [ "b", "c", "d" ]
a[4..7]                #=> [ "e" ]
a[6..10]               #=> nil
a[-3, 3]               #=> [ "c", "d", "e" ]
# special cases
a[5]                   #=> nil
a[6, 1]                #=> nil
a[5, 1]                #=> []
a[5..10]               #=> []

a = [ 1, 2, 3 ]           #=> [1, 2, 3]
a.shuffle                 #=> [2, 3, 1]
a                         #=> [1, 2, 3]

[ "a", "b", "c" ].join        #=> "abc"
[ "a", "b", "c" ].join("-")   #=> "a-b-c"

a = %w{ a b c d }
a.insert(2, 99)         #=> ["a", "b", 99, "c", "d"]
a.insert(-2, 1, 2, 3)   #=> ["a", "b", 99, "c", 1, 2, 3, "d"]

a = %w{ a b c d e f }
a.values_at(1, 3, 5)          # => ["b", "d", "f"]
a.values_at(1, 3, 5, 7)       # => ["b", "d", "f", nil]
a.values_at(-1, -2, -2, -7)   # => ["f", "e", "e", nil]
a.values_at(4..6, 3...6)      # => ["e", "f", nil, "d", "e", "f"]
