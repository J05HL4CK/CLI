require 'colorize'
require 'time'
require_relative(./expense_class)
def main_welcome_head
  user_name = ARGV.first
  puts "---------------------------------------------------------------"
  puts %Q{Welcome to CHEEP, the little budget app for your command line}
  puts "---------------------------------------------------------------"
  puts "|       ᕙ(`▿´)ᕗ cheep!               ᕙ(`▿´)ᕗ cheep!           |"
  puts "==========##===========================##======================"
  puts ""
  puts "                Let's get started #{user_name}!                "
  puts ""
  puts "---------------------------------------------------------------"
  end
def budget_head
  system "clear"
  puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
  puts  "*                       BUDGET TOOL                           *"
  puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
  
  puts " ϵ( ‘ ◇ ’ )϶ Use the budget tool to track your expenses ϵ( ‘ ◇ ’ )϶ "
  puts "---------------------------------------------------------------"
end
# def continue_prompt()
#  print "#{}"
#  $stdin.gets.chomp
# end
def quest_get(question,user_input) 
  print "#{question} > "
  user_input = $stdin.gets.chomp
  return user_input  
end


def choose_prompt()
  puts "Please select one of the following options: " 
  print "How would you like to continue? > "
  $stdin.gets.chomp
end
def menu_main()
  main_options = %W{Budget Goals Compare Help}
  main_options.each_with_index { |category, index| puts "#{index + 1}. #{category}" }
end
def invalid_warning()
  system "clear"
  puts " (⁽ؔ˙⁾ ⊝ ⁽ؔ˙⁾) Invalid selection, please try again  ლ(⁰ ⊖ ⁰ლ)"
end

def cheep_budget_app()
  choose = "Please select one of the following options: "
  prompt_user = "Enter your selection > "
  # save user data in this txt file, remember to close it! target.write(thing)
  
  main_welcome_head
  puts "#{choose}"
  menu_main
  print "#{prompt_user}"
  menu_choice = $stdin.gets.chomp.to_i
 
  
  case menu_choice
  when 1
    system "clear"
    budget_data = [
      {user_salary: "annual"},
      {user_realised: "savings"}

    ]
    budget_head
    # start to collect user info for storage
    # user annual salary 
    salary_enter =  "To start, enter your annual salary"
    quest_get(salary_enter,)
    
    
    


  when 2
    puts "this is ok too"
  else 
  invalid_warning
  end





end


cheep_budget_app



def expense_collect()
  puts "Edit some expenses here."
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

end