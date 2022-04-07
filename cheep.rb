require 'colorize'
require_relative("./heads_class")
require "tty-prompt"
def cheep
    prompt = TTY::Prompt.new
    Headings.welcome



end
cheep