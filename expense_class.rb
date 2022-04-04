class Expenses
    def initialize(name)
        @name = name
        @user_expenses = []
        
    end
    def add(label, amount, period_days)
        @user_expenses << {item: label, cost: amount, days: period_days}
    end
    def delete_last_entry
        @user_expenses.pop
    end
    def delete_discrete
        @user_expenses.delete_at[]
    end
    def calc
        # maths goes here

    end
    def display
        
        puts "#{@name.capitalize} Expenses: #{@user_expenses.length}"
        @user_expenses.each { | bill | puts "\n\t #{bill[:item]} $#{bill[:cost]} every #{bill[:days]} days."}
        puts "\n\nTotal cost of #{@name} expenses $#{@user_expenses.sum {|h|h[:cost]}} "    

    end
end

debit = Expenses.new("Home")
debit.add("Electricity", 60, 14)
debit.add("Rent", 100, 7)
debit.display
debit = Expenses.new("Food")
debit.add("cheezels", 20, 7)
debit.display