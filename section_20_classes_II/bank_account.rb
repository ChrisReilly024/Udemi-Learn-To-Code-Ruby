class BankAccount
    def initialize
        @amount = 5000

    end
    
    private
    def amount
        @amount / 100
    end
    
    public
    def status
        "your bank account has a total of #{amount} dollars"
    end

end

ba = BankAccount.new
p ba.status