# as a user i want to
#run the app
#what is app what it do
#welcome msg
#options
#choose an option (budget savings goals compare)
# ------BUDGET------
# enter annual salary and have it stored ()
# edit expenses (bill-name cost freq)
#option to view itemised summary and total 
#move to next step or exit
#- -------------------------------

#----------Savings
#enter initial savings amount and date
#be able to deduct amount from savings amount and add deduction date
#be able to add amount from savings amount and add date
#option to view summary
#option to move to next option or quit
#------------------------

#---------goals
# enter a name for goal 
#enter a date added
# enter price
# see all my goals
#---------------------

#--------------compare---------
# see how much of income is taken by what labels inputted and by how much 
# how much disposable income is there
#savings increase percent since last use?
# savings to goals comparison 
#goals to disposable
#----------------

#---------help scrn

#------ attributes I want to track------
# 
# name
# cost
# frequency

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

    end
    def display
        
        puts "#{@name.capitalize} Expenses: #{@user_expenses.length}"
        @user_expenses.each { | bill | puts "\n\t #{bill[:item]} $#{bill[:cost]} every #{bill[:days]} days."}
        puts "Total cost of #{@name} expenses $#{@user_expenses.sum {|h|h[:cost]}}  "    

    end
end

debit = Expenses.new("Home")
debit.add("Electricity", 60, 14)
debit.add("Rent", 100, 7)
debit.display
debit = Expenses.new("Food")
debit.add("cheezels", 20, 7)
debit.display