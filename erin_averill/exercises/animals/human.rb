class Human
	attr_accessor :health 
	def initialize name
		@name = name
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
	end
	def attack object
		object.health -= 5 if object.instance_of? Human
		puts "reduced the objects health by #{object.health}"
		self
	end
end

eric = Human.new('eric')
apple = Human.new('apple')
apple.attack(eric)
