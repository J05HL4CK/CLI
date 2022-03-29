# as a user i want to
#run the app
#what is app what it do
#welcome msg
#options
#choose an option (budget savings goals compare)
# ------BUDGET------
# enter annual salary and have it stored ()
# edit expenses (bill-name cost freq)
#option to view itemised summary and total 
#move to next step or exit
#- -------------------------------

#----------Savings
#enter initial savings amount and date
#be able to deduct amount from savings amount and add deduction date
#be able to add amount from savings amount and add date
#option to view summary
#option to move to next option or quit
#------------------------

#---------goals
# enter a name for goal 
#enter a date added
# enter price
# see all my goals
#---------------------

#--------------compare---------
# see how much of income is taken by what labels inputted and by how much 
# how much disposable income is there
#savings increase percent since last use?
# savings to goals comparison 
#goals to disposable
#----------------

#---------help scrn


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



#make a case for each entry, if it is comparable enter the corresponding day
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

continue = true
    while continue == true
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
    when answer = "n"
        continue = false
        system clear
    end
end
def in_out
     puts variable
     variable.gets 
    # store user inputs  

end
