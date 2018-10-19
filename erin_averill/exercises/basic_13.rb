# print 1-255

(1..255).each { |i| puts i }

# print odd numbers btwn 1-255

for i in 0..255
	puts i if i.odd? == true	
	end
end

#print sum

sum = 0
for i in 0..255
	sum = i + sum
	puts "New number : #{i} Sum: #{sum}"
	i += 1
	
end

# print all values in an array
 
x = [1,3,5,7,9,13,1]
for i in 0..x.length
	puts x[i]
end

find max value in an array
x = [1,3,5,7,-9,13,0,4,-8]
puts x.max

# get average of the valies in an array
b = [2,10,3]
def makeList(list)
	sum = 0
	for i in 0...list.count
		 sum += list[i]
	end
	return sum/list.length
end

puts makeList(b)

# create an array u that contains all the odd numbers btwn 1-255
y = []
for i in 1..255	
	y << i if i.odd? == true
end

# takes an array and returns the number of values in that array

y = [1,3,5,7]
val = 6

y.each { |i| puts i if i > val}

# given an array multiply each value by itself

s = [1,5,10,-2]

puts s.collect { |i| i*i }

# eliminate the negative numbers
n = [1,2,-5,6,0,-3]
for i in 0..n.length
	if n[i] < 0 
		n[i] = 0
	end
end
puts n

# with an array make algo that reurns a has with the max the min and the average
x = [1, 3, 5, 7, 9, 11]
sum = 0
for i in x
  sum += i
end
puts "the max is #{x.max} the min is #{min}, and the average is #{sum/x.length}"

# shift the values in an array to the front by one

x = [1,5,10,-2] #should get [5,10,-2,0]
x.shift if x[x.length] = nil x[x.length]replace(0)

# replace any negatives with DOJO string

n = [1,2,-5,6,0,-3]
for i in 0..n.length
	if n[i] < 0
		n[i] = 'Dojo'
	end
end
puts n




