class BankAccount
    attr_accessor :account_number, :checking_balance, :savings_balance
    @@no_of_accounts = 0

    def initialize
        @checking_balance = 2500
        @savings_balance = 5000
        @@no_of_accounts += 1
        puts "Number of accounts #{@@no_of_accounts}"
    end

    def account_balance
        puts "Your total account balance is #{@checking_balance + @savings_balance}"
        puts "Your total checking balance is #{@checking_balance}"
        puts "Your total savings balance is #{@savings_balance}"
    end

    def deposit(num, account)
        if account == "checking"
            puts "deposit #{num} into checking"
            @checking_balance = num + @checking_balance
            puts "your new checking balance is  #{@checking_balance}"
        elsif
            account == "savings"
            puts "deposit #{num} into savings"
            @savings_balance = num + @savings_balance
            puts "your new saving balance is #{@savings_balance}"
        end
    end
    
    def withdraw(num, account)
        if account == "savings"
            if num < @savings_balance
                @savings_balance -= num
                
			else
                puts "insufficient fund, cannot withdraw from savings"
			end
        elsif
			if num < @checking_balance
				@checking_balance -= num
			else
                puts "insufficient fund, cannot withdraw from checking"
			end
		end
    end
    
    private
    def display_account_Number
        @account_number = Integer(rand.to_s[2..9])
        puts "account number is #{@account_number}"
    end
end 

user1 = BankAccount.new
user1.account_balance
user1.deposit(400, "checking")
user1.withdraw(200, "checking")
user1.account_balance
user1.deposit(700, "savings")
user1.withdraw(90, "savings")
user1.account_balance





  