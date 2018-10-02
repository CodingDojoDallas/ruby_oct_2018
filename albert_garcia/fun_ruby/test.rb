# (1..10).each{|i| puts i}

# (0..30).each do |i|
#     if i.odd?
#         print i
#     end
# end
# arr = [1,2,3]
# def firstFunction(list)
#     list.each do |i|
#         p i
#     end
# end

# firstFunction(arr)

# def sum(list)
#     sum = 0
#     list.each do |i|
#         sum += i
#     end
#     puts sum
# end

# sum(arr)

def random
    arr = []
    for i in 1..10
        index =""
        for j in 1..5
            index+=(65+rand(26)).chr
            arr[i]=index
        end
    end
    puts arr
end
random