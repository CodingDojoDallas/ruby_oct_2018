#1 1-255
def print_val x,y
    (x..y).each do |i|
        puts i
    end
end

print_val 1,255

#2 odd 1-255
def odds x, y
    (x..y).each do |i|
        puts i if i.odd?
    end
end
odds 1,255

#3 print sum
def sums x,y
    sum = 0
    (x..y).each do |i|
        puts i
        sum += i
        puts sum
    end
end
sums 0,255

#4 iterate
def iterate x
    x.each do |i|
        puts i
    end
end
iterate [1,4,7,10,9]

#5 find max
def find_max x
    max = x[0]
    x.each { |i| max = i if i > max }
    puts max
end
find_max [1,4,7,10,9]

#6 get average
def get_average x
    sum = 0
    x.each { |i| sum += i }
    puts sum.to_f/x.length
end
get_average [9,6,1,2]

#7 array with odd
def odd_array
    y = []
    (1..255).each do |i|
        if i % 2 != 0
            y.push(i)
        end
    end
    puts y.to_s
end
odd_array

#8 greater than y
def greater_than array,y
    count = 0
    array.each {|i| count+= 1 if i > y}
    puts count
end
greater_than [1,3,5,7], 3

#9 square the values
def square_val x
    x.map! {|i| i*i}
    puts x
end
square_val [1,5,10,-2]

#10 eliminate negatives
def remove_negs x
    x.map! do |i|
        if i < 0
            i = 0
        else i = i
        end
    end
end
puts remove_negs [1,5,10,-2]

#11 max min average
def max_min_avg x
    hash = [x[0],x[0],0]
    x.each do |i|
        hash[2] += i
        if i > hash[0]
            hash[0] = i
        end
        if i < hash[1]
            hash[1] = i
        end
    end
    hash[2] = hash[2]/x.length.to_f
    puts hash
end
max_min_avg [1,5,10,-2]

#12 shifting values
def shifting x
    (0...x.length).each {|j| x[j] = x[j+1]}
    x[-1] = 0
    puts x
end
shifting [1,5,10,7,-2]

#13 number to string
def number_to_string x
    x.map! do |i|
        if i < 0
            i = 'Dojo'
        else i = i
        end
    end
    puts x
end
number_to_string [-1,-3,2]