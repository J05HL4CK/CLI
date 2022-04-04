#------ attributes I want to track------
# 
# name: discrete category and labels
# cost
# frequency

class Expense_cat
    attr_accessor :name, :user_expenses
    # init name for categ
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
        
        puts "#{@name.capitalize} Expense_cat: #{@user_expenses.length}"
        @user_expenses.each { | bill | puts "\n\t #{bill[:item]} $#{bill[:cost]} every #{bill[:days]} days."}
        puts "\n\nTotal cost of #{@name} expenses $#{@user_expenses.sum {|h|h[:cost]}} "    

    end
    def to_s
       return "#{@name}: #{@user_expenses.length} entries."
    end
end

home = Expense_cat.new("Home")
home.add("Electricity", 60, 14)
home.add("Rent", 100, 7)
#home.display
food = Expense_cat.new("Food")
food.add("cheezels", 20, 7)
#food.display
#puts "#{home}\n#{food}"
#puts home.user_expenses
home.to_s
#\n#{@user_expenses.each {|h|h[:item]}}
home.delete_last_entry
puts home