require 'colorize' # colour background and font 
require_relative("./heads_class") # headings and invalid warniing (maybe use tty for invalids)
require "tty-prompt" # menus and prompts
#-----Cheep Bugdet app Start-----
def cheep
    prompt = TTY::Prompt.new
    # display welcome message to user - first point of contact for user
    Headings.welcome

    # prompt user to select an option to continue
    prompt.select("To continue, please choose one of the following options: ", %w(Budget Savings Goals Help))
    # if the menu choise is comparable to 1,2 ,3  do that thing
    case menu.choice
    when 1
    when 2
    when 3
    else
    end




end
cheep