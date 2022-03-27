def budget_app
    # start heading
    puts "---------------------------------------------------------------"
    puts %Q{Welcome to CHEEP, the little budget app for your command line}
    puts "---------------------------------------------------------------"
    puts "|       ᕙ(`▿´)ᕗ cheep!               ᕙ(`▿´)ᕗ cheep!           |"
    puts "==========##===========================##======================"
    puts ""
    puts "                  Let's get started!                           "
    puts ""
    puts "---------------------------------------------------------------"
    # end heading


    # while user cont is true loop is executed
    #user_continue = true
    #while user == true

        # ask user how they would like to continue
    puts "How would you like to continue?"
       
        # give user a list of options to choose from
    menu_options = [
        {:option => "Budget", :selection => 1},
        {:option => "Savings", :selection => 2},
        {:option => "Compare", :selection => 3},
        {:option => "Goals", :selection => 4}
        ]
   

    puts "Please enter a number to make your selection"
    # display options to user
    menu_options.each do |option|
        puts "#{option[:selection]}. #{option[:option]} "
        end

    # user to enter numeric value stating their selection from options 
    usr_opt_select = gets.chomp.to_i
        # query user input, does it match a menu option (can't get this to function how i want, brute force it with case)
        case usr_opt_select

         # start budget tool 
        when usr_opt_select = 1
         system "clear"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            puts  "*                       BUDGET TOOL                           *"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            # short description of functions and how to use?
            puts " ϵ( ‘ ◇ ’ )϶ Use the budget tool to track your expenses ϵ( ‘ ◇ ’ )϶ "
            puts "---------------------------------------------------------------"


            #store user inputs 
            user_input_data = {}


            #---------- income ---
            # ask user for gross income
            puts "Let's begin by adding your gross salary or amount"
            usr_income_input = gets.chomp.to_f
            
            # ask user what period of time income relates to
            puts "Please enter a time period"            
        
            time_periods = [
                {:freq => "Week", :days => 7},
                {:freq => "Fortnight", :days => 14},
                {:freq => "Month", :days => 30},
                {:freq => "Year", :days => 365}
            ] 
            
            time_periods.each do |period| 
                puts "#{period[:freq]} "
            end
            usr_freq_input = gets.chomp.capitalize
           
           # store user data in hash (want user to continue using program - save so inputs are not lost on exit) 
           user_input_data[:user_income] = usr_income_input
           user_input_data[:user_income_freq] = usr_freq_input
           puts user_input_data
           
           # verify if usr_freq_input matches a listed value
           #now we have income and freq(in days) 
           # prompt user to enter some expenses

           
           puts "Next up, let's enter some expenses"
            # -----------------

            #------------expenses----
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
            puts "Please enter the date ddmmyy"
            #user enters the date?
            # create user_savings            
            # ask for what period of time the amount was saved over (optional)

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