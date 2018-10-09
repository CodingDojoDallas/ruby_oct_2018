class BankAccount
	@@total_accounts = 0
	attr_reader :name, :balance_saving, :balance_checking
	def initialize name, checking=0, savings=0
		account_number
		@name = name
		@checking = checking
		@savings = savings
		@@total_accounts += 2
		@interest = 0.01
		
	end		

	def return_info
		puts "hello #{@name}, #{@account_number}" 
		puts "you have #{@checking} dollars in your checking account"
		puts "and #{@savings} dollars in savings."
		self
	end

	def balance_checking
		puts "Checking balance: #{@checking}"
		self
	end

	def balance_saving
		puts "Savings balance: #{@savings}"
		self
	end

	def deposit account, amt
		if account == 'checking'
			@checking += amt
		elsif account == 'saving'
			@saving += amt
		else
			puts "This is an invalid format"
		end
		self
	end

	def withdraw account, amt
		if account == 'checking' && @checking > amt
			@checking -= amt
		elsif account == 'saving' && @saving > amt
			@saving -= amt
		else
			puts "Error"
		end
		self

	end

	def total
		total = @checking + @savings
		puts total
		self
	end

	private
		def account_number
	  		y = Array.new
	  		10.times {y.push(rand(0..9))}
	  		y = y.join.to_i
	  		@account_number = y
	  		self
		end
end

banker1 = BankAccount.new('me', 1000, 1000000).withdraw('checking', 20).total.return_info