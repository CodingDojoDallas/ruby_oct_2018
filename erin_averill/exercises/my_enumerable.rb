module MyEnumerable
  def my_each
  	for i in 0..self.length 
  	 	yield self[i]
  	end
    # 0.upto(self.length-1) { |i| yield self[i]}
  end
end
class Array
   include MyEnumerable
end

[1,2,3,4].my_each { |i| puts i }
[1,2,3,4].my_each { |i| puts i * 10 } 


