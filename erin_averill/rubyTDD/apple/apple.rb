class AppleTree
	attr_reader :height, :apple
	def initialize age
		@age = age
		@height = 10
		@apple = 5
	end
	def age
		"The tree is #{@age} years old"
	end
	def height
		"The tree is #{@height} feet tall"
	end
	def apple_count
		unless (3..10).include?(@age)
			@apples = 0
			"Apple tree has no apples"
		else 
			"Apple tree has #{@apple} apple's"
		end
	end
	def year_gone_by
		@age += 1
		@height += (@height*0.10)
		if @age < 3
			@apple = 0
		elsif @age > 10
			@apple
		else
			@apple +=2
		end
		"Tree is now #{@age} years old and has #{@apple} apples, and is #{@height} ft tall"
	end
	def pick_apples
		@apple = 0
	end
end

# tree = AppleTree.new(4).apple_count