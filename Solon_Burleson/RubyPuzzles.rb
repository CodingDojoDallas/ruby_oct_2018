# 1. 
# def sumgreaterten arr
#     sum = 0
#     newarr = []
#     arr.each do |i|
#         sum += i
#         if i > 10
#             newarr.push(i)
#         end
#     end
#     puts sum
#     return newarr
# end

# print sumgreaterten [2,5,2,3,7,9,8,13,25,32]

# 2.
# def printreturn arr
#     newarr = []
#     arr = arr.shuffle
#     arr.each do |i|
#         puts i
#         if i.length > 5
#             newarr.push(i)
#         end
#     end
#     return newarr
# end

# print printreturn ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

# 3.
# def shufflealpha arr
#     arr = arr.shuffle
#     puts arr.last
#     puts arr.first
#     if arr.first == 'a'|| arr.first == 'e'|| arr.first == 'i' || arr.first == 'o'|| arr.first == 'u'
#         return "First value is a vowel"
#     end
# end

# print shufflealpha ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

# 4. 
# def randomarr
#     arr=[]
#     x = 0
#     while x < 10
#         arr.push(rand(55..100))
#         x+=1
#     end
#     return arr
# end

# print randomarr

# 5. 
# def randomarr
#     arr=[]
#     x = 0
#     while x < 10
#         arr.push(rand(55..100))
#         x+=1
#     end
#     arr.sort! { |x,y| x <=> y }
#     print arr
#     puts (55..100).min
#     puts (55..100).max
# end

# randomarr

# 6.
# def randomstr
#     x = 0
#     str = ""
#     while x < 5
#         str += (65+rand(26)).chr
#         x+=1
#     end
#     puts str 
# end

# randomstr

# 7.
def randomstr
    arr = []
    while arr.length < 10
        x = 0
        str = ""
        while x < 5
            str += (65+rand(26)).chr
            x+=1
        end
        arr.push(str)
        puts str 
    end
    return arr
end

print randomstr