module MyEnumerable
    def my_each
        for i in self
            puts i * 10
        end
    end
  end
  class Array
     include MyEnumerable
  end
  [1,2,3,4].my_each { |i| puts i } 
  [1,2,3,4].each { |i| puts i * 10 } 