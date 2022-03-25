def cheep_budget
    balance  = 60 
    puts "Welcome to cheep, the little budget app for your command line"
    
    user_cont = true
    while user_cont == true
        puts "How would you like to proceed?"
        puts "Please select one of the following options to continue"
        puts %W()
        # get user input
        user_input = gets.chomp 
        puts "You have selected #{user_input}"
        case user_input
        when "balance"
            puts "Your balance is $#{balance}"
        when "deposit"
            # ask user how much to depos
            puts "How much would you like to deposit?"
            # get amount from user
            puts "Please enter an amount"
            depos_amount = gets.chomp.to_f
            # update balance
            balance += depos_amount
            #display to user
            puts "Your balance is $#{balance}"
        when "withdraw"
            #ask user for withdrawal amount
            puts "Please enter a withdrawal amount"
            #get user amount 
            with_amnt = gets.chomp.to_f
            #check if balance is greater than withdraw
            if with_amnt <= balance 
                # minus from balance
                balance -= with_amnt
                # print new balance to screen
                puts "Your balance is $#{balance}"
                # prompt user to take withdrawal
                puts "Please take your cash $#{with_amnt}"
                #if no display to user insufficient funds 
                else 
                    puts "You have insufficient funds, please select a different amount"      
            
                end
    when "exit"
         user_cont = false
         system "clear"

        else 
            puts "Invalid selection"
            system "clear"
        end
    end
    


    

end
cheep_budget
