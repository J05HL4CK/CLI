#------ attributes I want to track------
# 
# category name
# expense label
# cost
# frequency
# amnt entries
# 

class Expenses
    attr_accessor :name, :user_expenses
    # init name for categ
    @@n_cats = 0
    def initialize(name)
        @name = name
        @user_expenses = []
        @@n_cats += 1
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
    def self.total_n_cats
        @@n_cats
    end
    def calc
        # call budget functions in?

    end
    def display
        
        puts "#{@name.capitalize} Expenses: #{@user_expenses.length}"
        @user_expenses.each { | bill | puts "\n\t #{bill[:item]} $#{bill[:cost]} every #{bill[:days]} days."}
        puts "\n\nTotal cost of #{@name} expenses $#{@user_expenses.sum {|h|h[:cost]}} "    

    end
    def to_s
       return "#{@name}: #{@user_expenses.length} entries."
    end
end

 
 home = Expenses.new("Home")



 home.add("Electricity")
 home["Electricity"].add(30)
 #home.add("Rent", 100, 7)
 #home.display
 #food = Expenses.new("Food")
 #food.add("cheezels", 20, 7)
 #food.display
 #puts "#{home}\n#{food}"
 #puts home.user_expenses
 #home.to_s
 # \n#{@user_expenses.each {|h|h[:item]}}
 
 #puts "Number of Categories: #{Expenses.total_n_cats}"