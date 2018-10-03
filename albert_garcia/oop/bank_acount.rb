class Bank_account
    @@account_count = 0
    attr_accessor :ck_balance, :saving_balance
    private
    def initialize
        @account_number = rand(1000000000000..9999999999999)
        @ck_balance = 0
        @saving_balance =0
        @interest_rate = 0.01
        @@account_count +=1
    end
    public
    def checking_deposit(val)
        @ck_balance += val
        self
    end
    def checking_withdrawl(val)
        if @ck_balance > val
            @ck_balance -= val
            self
        else puts "Insufficient funds"
            self
        end
    end
    def saving_deposit(val)
        @saving_balance += val
        self
    end
    def saving_withdrawl(val)
        if @saving_balance > val
            @saving_balance += val
            self
        else puts "Insufficient funds"
            self
        end
    end
    def checking_balance
        puts @ck_balance
        self
    end
    def saving_balance
        puts @saving_balance
        self
    end
    def account_balance
        puts @ck_balance + @saving_balance
        self
    end
    def account_information
        puts "Account #:", @account_number, "Total account balance:", @saving_balance + @ck_balance, "Checking account balance:", @ck_balance, "Savings account balance:", @saving_balance, "interest rate is:", @interest_rate
    end
  end
  account1 = Bank_account.new
  account1.checking_deposit(100).checking_withdrawl(25).checking_balance
  account1.account_information