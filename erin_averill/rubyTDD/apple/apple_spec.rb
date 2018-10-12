require_relative 'apple'
RSpec.describe AppleTree do
	before(:each) do
		@tree1 = AppleTree.new(4)
		@tree2 = AppleTree.new(1)
	end
	it 'has a getter and setter method for the age attribute' do
		expect(@tree2.age).to eq("The tree is 1 years old")
	end
	it 'has a getter method for the height' do
		expect(@tree1.height).to eq("The tree is 10 feet tall")
	end
	it 'has a getter method for the apple count' do
		expect(@tree1.apple_count).to eq("Apple tree has 5 apple's")
		expect(@tree2.apple_count).to eq("Apple tree has no apples")
	end	
	it 'has a method year_gone_by adds a year to age increases height and apple count by 2' do
		expect(@tree1.year_gone_by).to eq("Tree is now 5 years old and has 7 apples, and is 11.0 ft tall")
		expect(@tree2.year_gone_by).to eq("Tree is now 2 years old and has 0 apples, and is 11.0 ft tall")
	end
	it 'has method of pick_apples that removes all apples' do
		expect(@tree1.pick_apples).to eq(0)
	end
end