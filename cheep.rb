require 'colorize' # colour background and font 
require_relative("./heads_class") # headings and invalid warning (maybe use tty for invalids)
require "tty-prompt" # menus and prompts
# require money - avoid weird rounding with float numbers?

#-----Cheep Budget app Start-----
def cheep
    # init menu
    main_menu = TTY::Prompt.new
    # init user name 
    name = TTY::Prompt.new
    # init storage container for all user details till push to file
    data_storage_container = []
    # init salary variable
    salary = TTY::Prompt.new
    # init expenses 
    expense = TTY::Prompt.new
    continue = TTY::Prompt.new
    # category entries loop init
    prompt = TTY::Prompt.new
    # init savings prompt
    savings = TTY::Prompt.new
    # display welcome/start message to user - first point of contact for user
    Headings.start
    # prompt for user name and assign to user_name variable
    user_name = name.ask("Begin by entering a user name", default: ENV["USER"])
    # push user_name to data storage container
    data_storage_container << user_name 
    
    # prompt user to select an option to continue
    menu = main_menu.select("To continue, please choose one of the following options: ", %w(Budget Savings Goals Help))
    # make case: if the menu choice is comparable, do that thing
    case menu
    #-----start Budget----- 
    when "Budget"
            # budget heading 
        Headings.budget
        user_salary = salary.ask("To start using the budget tool, please enter your annual salary: ", convert: :float)
        data_storage_container << user_salary
        #  user to add a category name that is a key and can store multiple values
        # a named category could hold multiple expenses and be called by the key
        # loop to continue adding expenses to category until uses wants to discontinue
        # add a new category of expenses or continue to savings?
        results = expense.collect do
        key(:category).ask("Start tracking your expenses by adding a category name: ", default: "Home" )
        # if yes user continues to add items, if no go back to        
        while prompt.yes?("Add an entry to this category?")
            key(:item).values do
                key(:name).ask("Enter a name for the expense: ", required: true)
                key(:cost).ask("Enter the cost of payments $", required: true, convert: :float,)
                # (7,14,30,365)
                key(:freq).ask("Enter the payment frequency in days: ", required: true, default: 7, validate: /(7|14|30|365)/ )
            end
        end
        end
        # sort by frequency (7,14,30,365)
        # if freq = 14 then divide cost and freq by 2 (for weekly)
        #results[:item].sort_by {|k,v|puts v}
        puts "Category: #{results[:category]}".black.on_white
        
        results[:item].each { | item | puts "#{item[:name].capitalize}: #{item[:freq]}\t$#{item[:cost]}" }
        # puts "Total: $#{results[:category][:item][:cost].sum}"
        
        # if freq is 7, then period is equal to 1, multiply cost by 52 etc etc?
        # or keep it as 1 week an show user the diff?
        puts "Weekly income: $#{user_salary / 52 }".green.on_white
        puts "Weekly outgoings: $#{results[:item].sum { | item | item[:cost] }}".red.on_white
        cat_cost_total = results[:item].sum {|item|item[:cost]}
        weekly_salary  = user_salary / 52
        disp_inc = weekly_salary - cat_cost_total
        puts "Disposable income: $#{disp_inc}".green.on_white
    
    #-----end Budget
    when "Savings"
        Headings.savings
        #amount of savings: -
            # get user savings amount
            # stamp current date
            # get how long did it take to accumulate
        #amount/period
        # add entries
        #delete entries
        #display amount over time, table or slider?


        
    when "Goals"
        Headings.goals
        # use tty sliders or range bars to show how far a user is from goals?
        # short term
        #mid term
        # long term
        #based on disposable income- how long to get to goals?
        # compare savings to goals - difference? time till? 

    when "Help"
        # how to navigate app
        # how to enter and delete entries
        # view users file of saved data



        puts """
             Sorry, I'm an app. Please see a financial advisor
             """
        
    else
        puts "invalid salecta rastamun"

    end




end
cheep