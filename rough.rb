module BudgetFunctions

    def daily(amount)
        @n1 = amount
        @daily = @n1 / 365
        puts @daily
    end

    def weekly(amount)
        @n1 = amount
        @weekly = @n1 / 52.0
        puts @weekly
    end
    def fortnightly(amount)
        @n1 = amount
        @fortnightly = @n1 / 26.07
        puts @fortnightly
    end
    def monthly(amount)
        @n1 = amount
        @monthly = @n1 / 12
    end
    def yearly(amount)
        @n1 = amount
        @monthly = @n1 / 
    end
end