class BankAccount
    def initialize
        @checking = 0
        @savings = 0
        @total = @checking + @savings
    end

    def call_acct
        puts acctnum
        return self
    end

    def call_totalaccts
        puts totalaccts
        return self
    end

    def deposit_checking num
        @checking += num
        @total += num
        return self
    end

    def deposit_savings num
        @savings += num
        @total += num
        return self
    end

    def withdraw_checking num
        if num > @checking
            puts "Insufficient funds"
            return self
        else
            @checking -= num
            @total -= num
            return self
        end
    end

    def withdraw_savings num
        if num > @savings
            puts "Insufficient funds"
            return self
        else
            @savings -= num
            @total -= num
            return self
        end
    end

    def checking_balance
        puts @checking
        return self
    end

    def savings_balance
        puts @savings
        return self
    end

    def total_balance
        puts @total
        return self
    end

    def acct_info
        puts acctnum, @total, @checking, @savings, interest 
        return self
    end
    
    private
        def acctnum
            @acctnum = rand(10000000000000)  
        end

        def interest
            @interestrate = 0.01
        end
        def totalaccts
            @totalaccts = 1
        end
end

class User < BankAccount
    attr_accessor :acctnum, :checking, :savings
    def initialize
        @acctnum = acctnum
        @checking = checking
        @savings = savings
    end
end

user = User.new
print user.checking_balance