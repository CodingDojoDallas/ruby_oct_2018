# 1. Print 1-255
# (1..255).each{ |i| puts i }

# 2. Print Odds
# (1..255).each{ |i| puts i if i % 2 != 0 }

# 3. Print num and sum
# sum = 0
# (1..255).each do |i|
#     sum+=i
#     print "New number: #{i} Sum: #{sum}"
# end

# 4. Iterate Array
# def iterate(arr)
#     arr.each{ |i| puts i }
# end

# iterate([1,3,5,7,9,13])

# 5. Find Max
# def Max arr
#     arr.max
# end    

# print(Max [-3, -5, -7])

# 6. Get Average
# def Average arr
#     sum = 0
#     arr.each{ |i| sum+=i }
#     avg = sum / arr.length
#     return avg
# end

# print Average [1,2,3,4,5]

# 7. Array with Odd Numbers
# def OddArr
#     arr = []
#     (1..255).each do|i|
#         if i % 2 != 0
#             arr.push(i)
#         end
#     end
#     return arr
# end

# print OddArr()

# 8. Greater than Y
# def greaterY arr, y
#     arr.each do |i|
#         if i > y
#             puts i
#         end
#     end
# end

# greaterY [1,3,5,7], 3

# 9. Square the values
# def squares arr
#     arr.each_index { |x| arr[x] *= arr[x] } 
# end
# print squares [1,5,10,-2]

# 10. Eliminate Negative Numbers
# def elimNeg arr
#     arr.each_index { |x| arr[x]=0 if arr[x] < 0 }
#     return arr
# end
# print elimNeg [1,5,10,-2]

# 11. Max, Min, Average
# def maxminavg arr
#     max = arr[0]
#     min = arr[0]
#     sum = 0
#     avg = 0
#     arr.each do |i|
#         if i < min
#             min = i
#             sum += i
#         elsif i > max
#             max = i
#             sum += i
#         else 
#             sum += i
#         end
#     end
#     avg = sum / arr.length
#     puts min
#     puts max
#     puts avg
# end
# maxminavg [1,5,10,-2]

# 12. Shifting the values in an array
# arr = [1,5,10,7,-2]
# def shift arr
#     arr.shift
#     arr.push(0)
#     return arr
# end
# print shift arr

# 13. 
# def negtostr arr
#     arr.map do |a|  
#         if a < 0
#             a='Dojo'
#         else
#             a=a
#         end
#     end
# end
# print negtostr [-1, -3, 2]