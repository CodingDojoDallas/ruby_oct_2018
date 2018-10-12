require_relative 'bank'
RSpec.describe BankAccount do
	before(:each) do
		@project1 = BankAccount.new("Monopoly man", 10, 1000)
	end
	it 'has a getter method for retrieving the checking account balance' do
		bank = BankAccount.new('me', 10, 1000)
		expect(bank.balance_checking).to eq("Checking balance: 10")
	end
	it 'has a getter method for retrieving the total account balance' do
		expect(@project1.total).to eq(1010)
	end
	it 'Has a function that allows the user to withdraw cash' do
		expect(@project1.withdraw('checking',5)).to eq("you have 5 in checking")
		expect(@project1.withdraw('checking',100)).to eq("Error")
	end
	it 'Raises an error when the user attempts to retrieve the total number of bank accounts' do
		expect{@project1.total_accounts}.to raise_error(NoMethodError)
	end
	it 'Raises an error when the user attempts to set the interest rate' do
		expect{@project1.interest}.to eq(NoMethodError)
	end	
end