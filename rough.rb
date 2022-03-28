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
case usr_opt_select
when usr_opt_select = 1
    budget_head
    #---------- income ---
    # ask user for gross income
    puts "Let's begin by adding your gross annual salary or amount"
    usr_income_input = gets.chomp.to_f
    # store user data in hash (want user to continue using program - save so inputs are not lost on exit) 
    user_input_data[:user_income] = usr_income_input
    puts user_input_data
    #-----------end income-------

    #------------expenses----
    puts "Next up, let's enter some expenses"
    # Each category is container for list 
    exp_category =[ 
                {:exp => "Home"}, 
                {:exp => "Bills"}, 
                {:exp => "Food"}, 
                {:exp => "Transport"}, 
                {:exp => "Children"}, 
                {:exp => "Pets"}, 
                {:exp => "Other"}
             ]
             puts "Choose a category to update"
            exp_category.each do |expense|
                puts "#{expense[:exp]}"
            end
            #get user to make selection 
            user_expense_cat = {}
            item = gets.chomp.capitalize
            #send to an array, push this into user input data 
            user_expense_cat[:expense] = item

            puts "To update please enter an amount"
            amount = gets.chomp.to_f
            user_expense_cat[:n] = amount
            
            puts "Please enter the frequency of your payment obligation"
            time_periods.each do |period|
                puts "#{period[:freq]} "
            end

            freq = gets.chomp.to_i
            user_expense_cat[:frequency] = freq


            
               
            
            # user to update section with name, amount and frequency
            # send user input to hash for saving



            

               
            
            
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