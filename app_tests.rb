# frozen_string_literal: true

require 'tty-prompt'
# ------------------------TTY INITIALISE------------------------
income = TTY::Prompt.new
expense = TTY::Prompt.new
prompt = TTY::Prompt.new
data_container = []
# ------------------------START INCOME----------------------------------------
user_income = income.collect do
  key(:salary).ask('Enter your annual net salary: $', convert: :float, required: true) # salary not a float yet

  next unless prompt.yes?('Any additional income?') do
  end

  key(:other_income).values do
    key(:name).ask('Enter a label:', default: 'Bonus')
    key(:amount).ask('Enter the annual amount: $', convert: :float, required: true)
  end
end
# -------------------------END INCOME-----------------------------------------

# puts user_income[:other_income][0][:amount] # this should be bonus amount (hash>array>hash)
# what if user has more than 1 bonus?? map or each?
# total income with one bonus - maybe put this in budget funcs to hide from user
total_income = user_income[:salary].to_f + user_income[:other_income][0][:amount]
p total_income
#--------------------------START EXPENSES-------------------------------------
user_expenses = expense.collect do
  key(:expense_category).ask('Start by adding a category name for your expenses: ', default: 'Home')
  while prompt.yes?('add entries?')
    key(:item).values do
      key(:name).ask('Enter a name for the expense: ', required: true)
      key(:cost).ask('Enter the cost of payments $', required: true, convert: :float)
      # (7,14,30,90,365)
      key(:freq).ask('Enter the payment frequency in days: ', required: true, default: 7,
                                                              validate: /(7|14|30|90|365)/)
    end
  end
end
user_expenses[:item].each { |item| puts "#{item[:name].capitalize}: #{item[:freq]}\t$#{item[:cost]}" }
# sorted = user_expenses[:item].any? { | items | items[:item].include?(14)}
# sorted = user_expenses[:item][:freq].any?(14)
# puts sorted
# user_expenses[:item].each { |item| item.any?(14) }
# user_expenses[:item].each.key(:freq).include?(14) 
# user_expenses[:item].any? { |_item, freq| freq == (14) }

# sorted = @item[:freq].find_all { |freq| freq == (14) }
p user_expenses

# ------------------------END EXPENSES---------------------------------------
# now I have the data.. ,i need total cost of expenses.
# i need to sort or map the data so freqs are the same before summing
# data_container.push(user_income, user_expenses)
# puts total_income
# pp data_container
