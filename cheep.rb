require 'colorize' # colour background and font 
require_relative("./heads_class") # headings and invalid warniing (maybe use tty for invalids)
require "tty-prompt" # menus and prompts
#-----Cheep Bugdet app Start-----
def cheep
    prompt = TTY::Prompt.new
    # display welcome message to user - first point of contact for user
    Headings.welcome

    # prompt user to select an option to continue
    menu = prompt.select("To continue, please choose one of the following options: ", %w(Budget Savings Goals Help))
    # if the menu choice is comparable, do that thing
    case menu
    when "Budget"
        puts "yes"
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