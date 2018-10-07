class BankAccount
    @@number_of_accounts = 0
    def initialize
        @account_number = create_account_number
        @checking_account = 1000
        @savings_account = 5000
        @interest_rate = 0.01
        @@number_of_accounts += 1
    end

    private
        def create_account_number
            rand(0..100)
        end

    public

    def display_account_number
        puts "Account number is #{@account_number}"
        self
    end

    def display_balance_checking
        puts "Checking account balance is #{@checking_account}"
        self
    end

    def display_balance_savings
        puts "Savings account is #{@savings_account}"
        self
    end

    def deposit_checking amount
        @checking_account = @checking_account + amount
        puts "#{amount} was deposited in checking account. New checking balance is #{@checking_account}"
        self
    end

    def deposit_savings amount
        @savings_account = @savings_account + amount
        puts "#{amount} was deposited in savings account. New savings balance is #{@savings_account}"
        self
    end

    def withdraw_checking amount
        if @checking_account > amount
            @checking_account = @checking_account - amount
            puts "#{amount} was withdrawn from checking account. New checking balance is #{@checking_account}."
        else
            puts "Your withdrawal exceeds the amount available. Checking balance is only #{@checking_account} and the withdrawal attempt is #{amount}"
        end
        self
    end
    def withdraw_savings amount
        if @savings_account > amount
            @savings_account = @savings_account - amount
            puts "#{amount} was withdrawn from checking account. New checking balance is #{@savings_account}."
        else
            puts "Your withdrawal exceeds the amount available. Checking balance is only #{@savings_account} and the withdrawal attempt is #{amount}"
        end
        self
    end
    def display_total
        puts "The total amount is #{@checking_account + @savings_account} from #{@checking_account} in checking and #{@savings_account}"
        self

    end
    def account_information
        puts "The user account number is #{@display_account_number}
        \nThe total balance is #{@checking_account + @savings_account}
        \nThe checking account balance is #{@checking_account}
        \nThe savings account balance is #{@savings_account}
        \nThe interest rate is #{@interest_rate}"


        self
    end

end

# account1 = BankAccount.new.display_account_number.display_balance_checking.display_balance_savings.deposit_checking(500).deposit_savings(250).withdraw_checking(5000).withdraw_savings(1500)
account2 = BankAccount.new.account_information
