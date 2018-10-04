require_relative "mammal"

class Dog < Mammal
	def pet
		@health += 5
		self
	end

	def walk
		@health -= 1
		self
	end

	def run
		@health -= 10
		self
	end
end
pet = Dog.new.pet.display_health
walk = Dog.new.walk.display_health
run = Dog.new.run.display_health
trip = Dog.new.walk.walk.walk.run.run.pet.display_health






