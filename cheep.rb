require 'colorize' # colour background and font 
require_relative("./heads_class") # headings and invalid warning (maybe use tty for invalids)
require "tty-prompt" # menus and prompts
# User data class
class UserData
    # read and write access to categories and inputs 
    attr_accessor :data_category, :inputs
    # initialise number of entries 
    @@n_entries = 0
    # specify the data budget/ savings/ goals etc with data_cat
    def initialize(data_category)
       @data_category = data_category
       # storage array for user inputs
       @inputs = []
       # plus 1 for every entry that's added 
       @@n_entries += 1
               
    end
    # user to add category(home, transport etc) item(rent, pets etc) how often in days
    def add(category, item, amount, frequency)
        # push all into the storage array @inputs
        @inputs << {label: category, n: amount, days: frequency}

    end
    # delete the last entry
    def delete_last
        @inputs.pop
    end
    # display category, amount of entries and all entries 
    def display_all
        puts "Data Category: #{@data_category.capitalize} User Entries: #{@inputs.length}"
        @inputs.each { | entry | puts "\n\t #{entry[:label]} $#{entry[:n]}  #{entry[:days]}."}
        puts "\n\n#{@data_category.capitalize} Input Total: $#{@inputs.sum {|h|h[:n]}} "    
    end
    # overide string to provide meaningful data when called
    def to_s
        return "Data category: #{@data_category.capitalize},\tEntries: #{@inputs.length}"

    end
end
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
    prompt = TTY::Prompt.new
    # display welcome message to user - first point of contact for user
    Headings.welcome
    # prompt for user name and assign to user_name variable
    user_name = name.ask("Begin by entering a user name", default: ENV["USER"])
    # push user_name to data storage container
    # data_storage_container << user_name 
    
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
       # trying to achieve: user to add a category name that is a key and can store multiple values
       # a named category could hold multiple expenses and be called by the key
       # loop to continue adding expenses to category until uses wants to discontinue
       # add a new category of expenses or continue to savings?
        results = expense.collect do
            key(:category).ask("Start tracking your expenses by adding a category name: ", default: "Home" )
                   
            while prompt.yes?("Add items to this category?")
              key(:item).values do
                key(:name).ask("Enter a name for the expense: ", required: true)
                key(:cost).ask("Enter the cost of payments $", required: true, convert: :float,)
                key(:freq).ask("Enter the period between payments in days: ", required: true, default: 7)
              end
            end
        end
        # puts "Category: #{results[:category]} \n#{results[:item]}\n"
        # results.each {|category|puts "#{results[:item]}"}
        puts "Category: #{results[:category]}".black.on_white
        puts "Weekly income: $#{user_salary / 52 }".green.on_white
        
        results[:item].each { | item | puts "#{item[:name].capitalize}: #{item[:freq]}\t$#{item[:cost]}" }
        # puts "Total: $#{results[:category][:item][:cost].sum}"

        # if freq is 7, then period is equal to 1, multiply cost by 52 etc etc?
        # or keep it as 1 week an show user the diff?
        puts "Weekly outgoings: $#{results[:item].sum { | item | item[:cost] }}".red.on_white
       cat_cost_total = results[:item].sum {|item|item[:cost]}
       weekly_salary  = user_salary / 52
       disp_inc = weekly_salary - cat_cost_total
       puts "Disposable income: $#{disp_inc}".green.on_white
    #-----end Budget
    when "Savings"

        
    when "Goals"
        Headings.goals
        # use tty sliders or range bars to show how far a user is from goals?
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