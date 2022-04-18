# frozen_string_literal: true

require 'tty-prompt'
# ------------------------TTY INITIALISE------------------------
income = TTY::Prompt.new
expense = TTY::Prompt.new
prompt = TTY::Prompt.new
data_container = []
# ------------------------START INCOME----------------------------------------
user_income = income.collect do
  key(:salary).ask('Enter your annual net salary', convert: :float, required: true)

  next unless prompt.yes?('Any additional income?') do
  end

  key(:other_income).values do
    key(:name).ask('Enter a label', default: 'Bonus')
    key(:amount).ask('Enter the annual amount', required: true)
  end
end
# -------------------------END INCOME-----------------------------------------

#--------------------------START EXPENSES-------------------------------------
user_expenses = expense.collect do
  key(:category).ask('Start by adding a category name for your expenses: ', default: 'Home')

  key(:item).values do
    key(:name).ask('Enter a name for the expense: ', required: true)
    key(:cost).ask('Enter the cost of payments $', required: true, convert: :float)
    # (7,14,30,90,365)
    key(:freq).ask('Enter the payment frequency in days: ', required: true, default: 7,
                                                            validate: /(7|14|30|90|365)/)
  end
end
# ------------------------END EXPENSES---------------------------------------
data_container.push(user_income, user_expenses)
pp data_container
# now I have the data.. so I need a total income, and total cost of expenses. i need to sort or map the data so freqs are the same before summing
