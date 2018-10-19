class Mammal
	def initialize health = 150
		@health = health
	end
	def display_health
		puts @health
		self
	end
end

# doggie = Mammal.new.display_health