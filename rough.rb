def budget_app
    # start heading
    puts "---------------------------------------------------------------"
    puts %Q{Welcome to CHEEP, the little budget app for your command line}
    puts "---------------------------------------------------------------"
    # end heading

    puts "cheep! cheep!"
    puts "Let's get started!"
    # while user cont is true loop is executed
    user_continue = true
    while user_continue == true
        # ask user how they would like to continue
        puts "How would you like to continue?"
       
        # give user a list of options to choose from
        menu_options = [
            {:option => "Budget", :selection => 1},
            {:option => "Savings", :selection => 2},
            {:option => "Compare", :selection => 3},
            {:option => "Goals", :selection => 4}
        ]

        # display options to user
        menu_options.each do |option|
            puts "#{option[:selection]}. #{option[:option]} "
        end

        # user to enter numeric value stating their selection from options 
        usr_opt_select = gets.chomp.to_i
        # query user input, does it match a menu option
        case usr_opt_select
        when usr_opt_select = 1
            puts "you have selected Budget tool"          
        
        when usr_opt_select = 2
            puts "You have selected Savings tool"

        when usr_opt_select = 3
            puts "You have selected Comparison tool"   
        when usr_opt_select = 4 
            puts  "You have selected Goals tool"
        
        else
            puts "Invalid selection, please try again"
        end
    when "q"
        user_continue = false
        system "clear"
    end

 

  



end
budget_app