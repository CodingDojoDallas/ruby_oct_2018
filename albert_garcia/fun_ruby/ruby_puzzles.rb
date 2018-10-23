#1
arr = [3,5,1,2,7,9,8,13,25,32]
def greater_ten x
    puts x.find_all {|i| i > 10}
end
greater_ten arr

#2
arr =["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
def shuffle x
    puts x.shuffle
    puts x.find_all {|i| i.length > 5}.to_s
end
shuffle arr

#3
arr = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
def alpha_shuffle x
    x.shuffle!
    puts x[25]
    puts x[0]
    if x[0] == 'a' or x[0] =='e' or x[0] =='i' or x[0] =='o' or x[0] =='u'
        puts "this is a vowel!"
    end
end
alpha_shuffle arr

#4
def random
    arr = []
    (0...10).each { |i| arr[i] = rand(55..100)}
    puts arr
end
random

#5
def random
    arr = []
    (0...10).each { |i| arr[i] = rand(55..100)}
    puts arr.sort
end
random

#6
def random
    arr = []
    (0...10).each { |i| arr[i] = rand(55..100)}
    puts arr.sort
    puts "break"
    puts arr.max
    puts arr.min
end
random

#7
def random
    arr = ""
    for i in 1..5
        arr+=(65+rand(26)).chr
    end
    puts arr
end
random

#8
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