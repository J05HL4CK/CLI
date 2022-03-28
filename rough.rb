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
expenses =[]
case usr_opt_select
when usr_opt_select = 1
    budget_head
    #---------- income ---
    # ask user for gross income
    puts "Let's begin by adding your gross annual salary or amount"
    user_salary = gets.chomp.to_f
    # store user data in hash (want user to continue using program - save so inputs are not lost on exit) 
    user_input_data[:user_income] = user_salary
    
    #-----------end income-------

    #------------expenses----
    puts "Next up, let's enter some expenses"
    # Each category is container for list 
    puts 'Start by adding a label for your expense'
    item = gets.chomp.downcase
    puts 'Enter an amount'
    cost = gets.chomp.to_f
    puts "How frequent are the payments? Please enter a number of days"
    frequency = gets.chomp.to_i
    expenses << {:item => item, :cost => cost, :days => frequency}
    puts "Would you like to add another entry to expenses?"
    puts "(y/n) y = add entry, n = proceed to Savings"
    answer = gets.chomp.downcase 
    # if y then loop continues
    #if n loop stops and program continues
    #--------end loop

   #expenses.each do |bill|
   #    puts "In the last #{bill[:days]} days you spent #{bill[:cost]} on #{bill[:item]}!!"
   #end

#------------Summary----- (make summary a separate tool?)
            # user can chose budget period (week, fortnight, month, year)
            # list expenses  totalled for each sect (home, bills, etc)
            #disp income
            #disp disposable income 
            #---------------





        # end budget tool 

        # start savings tool
        when usr_opt_select = 2
            system "clear"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            puts  "*                       SAVINGS TOOL                          *"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            # short description of functions and how to use?
            puts "(　＾ Θ ＾) Use the savings tool to track your savings (＾ Θ ＾  ) "

            puts "What is your current savings amount"
            #user enters amount
            usr_savings = gets.chomp.to_f
            # user_input_data[:user_savings] = usr_savings
            puts "Please enter the date ddmmyy"
            usr_savings_data = gets.chomp.to_i
            #user_input_data[:user_savings, :date] = usr_savings_data
            puts user_input_data
            # create user_savings            
            

            #user should be able to see saving logs( and periods?)
            #user should be able to edit saving amount (add and subtract)
            #usr should be able to see when the savings was edited also


            # end savings tool

            # start comparison tool
        when usr_opt_select = 3
            system "clear"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            puts  "*                       COMPARISON TOOL                       *"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"   
            # short description of functions and how to use?
            


            # end comparison tool

            # start goals tool
        when usr_opt_select = 4 
            system "clear"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            puts  "*                      GOALS TOOL                             *"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            # short description of functions and how to use?

            #user to enter item
            #user to enter price



            # end goals tool
        else
            system "clear"
            puts " (⁽ؔ˙⁾ ⊝ ⁽ؔ˙⁾) Invalid selection, please try again  ლ(⁰ ⊖ ⁰ლ)"
        end

  

    end
budget_app