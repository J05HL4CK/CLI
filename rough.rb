def main_welcome_head
    puts "---------------------------------------------------------------"
    puts %Q{Welcome to CHEEP, the little budget app for your command line}
    puts "---------------------------------------------------------------"
    puts "|       ᕙ(`▿´)ᕗ cheep!               ᕙ(`▿´)ᕗ cheep!           |"
    puts "==========##===========================##======================"
    puts ""
    puts "                  Let's get started!                           "
    puts ""
    puts "---------------------------------------------------------------"
    end
def budget_head
    system "clear"
    puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
    puts  "*                       BUDGET TOOL                           *"
    puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
    # short description of functions and how to use?
    puts " ϵ( ‘ ◇ ’ )϶ Use the budget tool to track your expenses ϵ( ‘ ◇ ’ )϶ "
    puts "---------------------------------------------------------------"
end
def expense_loop
    expenses = []
    puts 'Start by adding a label for your expense'
    item = gets.chomp.downcase
    puts 'Enter an amount'
    cost = gets.chomp.to_f
    puts "How frequent are the payments? Please enter a number of days"
    frequency = gets.chomp.to_i
    expenses << {:item => item, :cost => cost, :days => frequency}
    
        
    
end
def savings_head
    system "clear"
    puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
    puts  "*                       SAVINGS TOOL                          *"
    puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
    # short description of functions and how to use?
    puts "(　＾ Θ ＾) Use the savings tool to track your savings (＾ Θ ＾  ) "
end
def goals_head
    system "clear"
    puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
    puts  "*                      GOALS TOOL                             *"
    puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
end
def invalid_warning
    system "clear"
    puts " (⁽ؔ˙⁾ ⊝ ⁽ؔ˙⁾) Invalid selection, please try again  ლ(⁰ ⊖ ⁰ლ)"
end

def budget_app
    main_welcome_head
    # ask user how they would like to continue
    puts "How would you like to continue?"
    # prompt user to make selection       
    puts "Please enter a number to make your selection"
    # display options to user
    options = %W[Budget Savings Goals Compare]
    options.each_with_index { |item, index| puts "#{index + 1}. #{item}" }
    # user to enter numeric value stating their selection from options 
    usr_opt_select = gets.chomp.to_i
    # query user input, does it match a menu option (can't get this to function how i want, brute force it with case)
    #store user inputs (data to manipulate)
    user_input_data = {}
    case usr_opt_select
    when 1
        budget_head
        #---------- income ---
        # ask user for gross income
        puts "Let's begin by adding your gross annual salary or amount"
        user_salary = gets.chomp.to_f
        # store user data in hash (want user to continue using program - save so inputs are not lost on exit) 
        user_input_data[:user_income] = user_salary
        
        #-----------end income-------
        
        #------------expenses----
        expenses = []
        continue = true
        while continue == true
            puts "Start by adding a label for your expense"
            item = gets.chomp.downcase
            puts 'Enter an amount'
            cost = gets.chomp.to_f
            puts "How frequent are the payments? Please enter a number of days"
            frequency = gets.chomp.to_i
            expenses << {:item => item, :cost => cost, :days => frequency}
            puts "Would you like to add another entry to expenses?"
            puts "(y/n) y = add entry, n = proceed to Savings"
            answer = gets.chomp.downcase
        if answer == "n"
                continue = false
                system "clear"
                usr_opt_select == 2
           
        else continue = true
        end
    end    
    when 2   
        savings_head


   
    when 3
        goals_head
    
    when 4
        puts 'germs, heaps of germs where there should be text ewwwwwww'
    
    else 
    invalid_warning
       
    end
end
budget_app

     
