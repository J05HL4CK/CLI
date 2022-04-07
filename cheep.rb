require 'colorize' # colour background and font 
require_relative("./heads_class") # headings and invalid warning (maybe use tty for invalids)
require "tty-prompt" # menus and prompts
# User data class
class UserData
    attr_accessor :data_category, :inputs
    @@n_entries = 0
# specify the data savings goals etc with data_cat
    def initialize(data_category)
       @data_category = data_category
       @inputs = []
       @@n_entries += 1
               
    end
    # user to add category(home, transport etc) item(rent, pets etc) how often in days
    def add(category, item, amount, frequency)
        @inputs << {label: category, n: amount, days: frequency}

    end
    # delete the last entry
    def delete_last
        @inputs.pop
    end
    
    def display_all
        puts "Data Category: #{@data_category.capitalize} User Entries: #{@inputs.length}"
        @inputs.each { | entry | puts "\n\t #{entry[:label]} $#{entry[:n]}  #{entry[:days]}."}
        puts "\n\n#{@data_category.capitalize} Input Total: $#{@inputs.sum {|h|h[:n]}} "    
    end
    def to_s
        return "Data category: #{@data_category.capitalize},\tEntries: #{@inputs.length}"

    end
end
#-----Cheep Budget app Start-----
def cheep
    prompt = TTY::Prompt.new
    # display welcome message to user - first point of contact for user
    Headings.welcome

    # prompt user to select an option to continue
    menu = prompt.select("To continue, please choose one of the following options: ", %w(Budget Savings Goals Help))
    # if the menu choice is comparable, do that thing
    case menu
    # user has selected Budget, run budget 
    when "Budget"
        # budget heading 
        Headings.budget


    when "Savings"
        puts "yes"
    when "Goals"
        puts "yep"
    when "Help"
        puts "helllllpppp"
    else
        puts "nah"

    end




end
cheep