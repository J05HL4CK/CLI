loop do 
    user_expenses = expense.collect do
    key(:category).ask("Start by adding a category name for your expenses: ", default: "Home" )

    while prompt.yes?("Add an entry to this category?")
    key(:item).values do
        key(:name).ask("Enter a name for the expense: ", required: true)
        key(:cost).ask("Enter the cost of payments $", required: true, convert: :float,)
        # (7,14,30,90,365)
        key(:freq).ask("Enter the payment frequency in days: ", required: true, default: 7, validate: /(7|14|30|90|365)/ )
    end
end
break if yeet.keypress("Press esc to enter a new category", keys: [:escape])
end
end

