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

            # end budget tool 

            # start savings tool
        when usr_opt_select = 2
            system "clear"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            puts  "*                       SAVINGS TOOL                          *"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"

            # end savings tool

            # start comparison tool
        when usr_opt_select = 3
            system "clear"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            puts  "*                       COMPARISON TOOL                       *"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"   

            # end comparison tool

            # start goals tool
        when usr_opt_select = 4 
            system "clear"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
            puts  "*                      GOALS TOOL                             *"
            puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"


            # end goals tool
        else
            system "clear"
            puts "Invalid selection, please try again"
        end
    
       
    #end
    


 

  



end
budget_app