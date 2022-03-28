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
