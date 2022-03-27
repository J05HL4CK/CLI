def budget_app
       
     puts "How would you like to continue?"
       
    # give user a list of options to choose from
    menu_options = %W[Budget Savings Compare Goals]
    menu_options.each_with_index { |category, index| puts "#{index + 1}. #{category}" }
    # prompt user to make choice
    puts "Please enter a number to make your selection"    
    # user to enter numeric value stating their selection from options 
    usr_opt_select = gets.chomp.to_i
        
        
        case usr_opt_select

         # start budget tool 
        when usr_opt_select = 1
         system "clear"
             #store user inputs 
            user_budget_input_data = {}


            #---------- income ---
            # ask user for gross income
            puts "Let's begin by adding your gross salary or amount"
            usr_income_input = gets.chomp.to_f
            
            # ask user what period of time income relates to
            puts "Please enter a time period in days"  
            time_periods = [
                {:days => 7, :one => "week"},
                {:days => 14, :one => "fortnight"},
                {:days => 30, :one => "month"},
                {:days => 365, :one => "year"}
            ]                                                                                                      

            time_periods.each do |period| 
                puts "#{period[:one]} = #{period[:days]} days "
            end
            user_income_freq = gets.chomp.to_i
            user_budget_input_data[:income] = usr_income_input
            user_budget_input_data[:income_frequency] = user_income_freq

           puts "great lets edit some expenses"
           expenses = [
               {:item => "Home"},
               {:item => "Bills"},
               {:item => "Food"},
               {:item => "Transport"},
               {:item => "Children"},
               {:item => "Pets"},
               {:item => "Other"}

               
           ]
           expenses.each_with_index { |item, index| puts "#{index + 1}. #{item[:item]}" }
           puts 'enter a num'
            expenses_action = gets.chomp.to_i          
           case expenses_action
           when expenses_action = 1 # home
                system "clear"
                user_home_expenses = {}
                puts 'update home expenses here'
                puts "enter a name for the expense"
                home_item = gets.chomp.capitalize

                puts "enter an amount for the expense"
                n = gets.chomp.to_f
                puts "enter a frequency for payment"
                f = gets.chomp.to_i
           when expenses_action = 2 #bills
           when expenses_action = 3 # food
           when expenses_action = 4 # transport
           when expenses_action = 5 # children
           when expenses_action = 6 # pets
           when expenses_action = 7 # other
           else
            puts 'nah mate'
           end


            # Week = 7
            # Fortnight = 14
            # Month = 30
            # Year = 365
    
            #time_periods = [ 
            #    { :week => 7},
            #    { :fortnight => 14},
            #    { :month => 30},
            #    { :year => 365}
            #] 
            #
            #time_periods.each do |period| 
            #    puts "#{period[:freq]} "
            #end
            #usr_freq_input = gets.chomp.capitalize

            #make a case for each entry, if it is comparable enter the corresponding days to hash
            # case usr_freq_input
            # when usr_freq_input == "Week"
            #      user_input_data[:user_income_freq] = 7
            # when usr_freq_input == "Fortnight"
            #     user_input_data[:user_income_freq] = 14
            # when usr_freq_input == "Month"
            #     user_input_data[:user_income_freq] = 30
            # when user_input_data == "Year"
            #     user_input_data[:user_income_freq] = 365
            # else
            #     puts " (⁽ؔ˙⁾ ⊝ ⁽ؔ˙⁾) Invalid selection, please try again  ლ(⁰ ⊖ ⁰ლ)"
            # end
                





            
                
            #if user enters week, send 7 
            #if user enters fortnight send 14 etc

           
           # store user data in hash (want user to continue using program - save so inputs are not lost on exit) 
           #user_input_data[:user_income] = usr_income_input
           #puts user_input_data
           
           # verify if usr_freq_input matches a listed value
           #now we have income and freq(in days) 
           # prompt user to enter some expenses

           
           #puts "Next up, let's enter some expenses"
            # -----------------

            #------------expenses----
            # Each category is container for list 
            #exp_category =[ 
            #   {:exp => "Home"}, 
            #   {:exp => "Bills"}, 
            #   {:exp => "Food"}, 
            #   {:exp => "Transport"}, 
            #   {:exp => "Children"}, 
            #   {:exp => "Pets"}, 
            #   {:exp => "Other"}
            #]
            #puts "Choose a category to update"
            #exp_category.each do |expense|
             #   puts "#{expense[:exp]}"
            #end
            ##get user to make selection 
            #user_expense_cat = {}
            #item = gets.chomp.capitalize
            ##send to an array, push this into user input data 
            #user_expense_cat[:expense] = item
#
            #puts "To update please enter an amount"
            #amount = gets.chomp.to_f
            #user_expense_cat[:n] = amount
            #
            #puts "Please enter the frequency of your payment obligation"
            #time_periods.each do |period|
                #puts "#{period[:freq]} "
            #end
#
            #freq = gets.chomp.to_i
            #user_expense_cat[:frequency] = freq


            
               
            
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
def cheep
puts "welcome"
puts "how to continue?"
# put up list of options 
options = ['Budget', 'Savings', 'Goals', 'Compare']
options.each_with_index { |item, index| puts "#{index + 1}. #{item}" }



    
    
end
cheep