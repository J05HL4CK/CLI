def budget_app
    # start heading
    puts "---------------------------------------------------------------"
    puts %Q{Welcome to CHEEP, the little budget app for your command line}
    puts "---------------------------------------------------------------"
    # end heading

    # ask user how they would like to continue
    puts "cheep! cheep!"
    puts "Let's get started!"
    puts "How would you like to continue?"
       
    # give user a list of options to choose from
    user_options = [
        {:option => "Budget", :selection => 1},
        {:option => "Savings", :selection => 2},
        {:option => "Compare", :selection => 3},
        {:option => "Goals", :selection => 4}
    ]

    # display options to user
    user_options.each do |option|
        puts "#{option[:selection]}. #{option[:option]} "
    end

    # user to enter numeric value stating their selection from options 
    usr_opt_select = gets.chomp.to_i

    # confirm selection to user
    puts "You have selected #{usr_opt_select}"
    
    #check if value is in the options array?
    #if valid selection cont
    #if not valid selection return to options menu 

  



end
budget_app