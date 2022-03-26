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
    #while user_continue == true
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
        # query user input, does it match a menu option
        case usr_opt_select
            # start budget tool 
        when usr_opt_select = 1
            system "clear"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            puts  "*                       BUDGET TOOL                           *"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            # short description of functions and how to use?
            puts "short exp of what this tool does goes here, i am placeholder text"

            #---------- income ---
            # ask user for gross income
            # ask user what period of time income relates to (week, fortnight, month, year)
            # -----------------

            #------------expenses----
            # ask what bills/expenses the user has
            # get user to input bill name - should i give user the basic names and they enter n and freq only? (break into sections? home, bills, transport etc)
            # get user to input bill amount
            #get user to input frequency
            #------------
            
            #------------Summary-----
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

            #user enters amount
            # create user_savings
            # ask for what period of time the amount was saved over


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


            # end goals tool
        else
            system "clear"
            puts " (⁽ؔ˙⁾ ⊝ ⁽ؔ˙⁾) Invalid selection, please try again  ლ(⁰ ⊖ ⁰ლ)"
        end
    
       
    #end
    


 

  



end
budget_app