module BudgetFunctions
    # 1/365 days a yr
    def BudgetFunctions.daily(amount)
        n1 = amount
        daily = n1 / 365.25
        puts daily
    end
    # 1/52 weeks a year
    def BudgetFunctions.weekly(amount)
        n1 = amount
        weekly = n1 / 52.0
        puts weekly
    end
    # 1/26.07th of a year is a fortnight
    def BudgetFunctions.fortnightly(amount)
        n1 = amount
        fortnightly = n1 / 26.07
        puts fortnightly
    end
    # 1/12th of a year = 1 month
    def BudgetFunctions.monthly(amount)
        n1 = amount
        monthly = (1.0 / 12) * n1
    end
    # keep it simple!
    def BudgetFunctions.difference(a, b)
        c = a - b
    end
    def BudgetFunctions.product(a, b)
        c = a * b
    end
end

BudgetFunctions.weekly(26000)