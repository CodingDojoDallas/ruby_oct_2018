class MathDojo
	def initialize(*argument)
		# @numbers = argument
		@total = 0
		self
	end
  def add(*num)
  	arrays = num.flatten
  	total_sum = arrays.sum
  	# p total_sum
  	@total = total_sum + @total
  	self
  end
  def subtract(*num)
  	arrays = num.flatten
  	total_sum = arrays.sum
  	# p total_sum
  	@total = @total - total_sum
  	self
  end
  def result
  	puts @total
  end
end
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15