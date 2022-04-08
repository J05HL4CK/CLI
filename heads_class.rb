#things i want to work with
#name of whats displayed
# some headings

module Headings

    def Headings.welcome
        puts "---------------------------------------------------------------"
        puts %Q{Welcome to CHEEP, the little budget app for your command line}
        puts "---------------------------------------------------------------"
        puts "|       ᕙ(`▿´)ᕗ cheep!               ᕙ(`▿´)ᕗ cheep!           |"
        puts "==========##===========================##======================"
        puts ""
        puts "                Let's get started !                            "
        puts ""
        puts "---------------------------------------------------------------"

    end
    def Headings.budget
        system "clear"
        puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
        puts  "*                       BUDGET TOOL                           *"
        puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"

        puts " ϵ( ‘ ◇ ’ )϶ Use the budget tool to track your expenses ϵ( ‘ ◇ ’ )϶ "
        puts "---------------------------------------------------------------"
    end
    def Headings.savings
        system "clear"
        puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
        puts  "*                       SAVINGS TOOL                          *"
        puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
        # short description of functions and how to use?
        puts "(　＾ Θ ＾) Use the savings tool to track your savings (＾ Θ ＾  ) "
        puts "---------------------------------------------------------------"
    end
    def Headings.goals
        system "clear"
        puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
        puts  "*                      GOALS TOOL                             *"
        puts  "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
    end
    def Headings.invalid_warning
        system "clear"
        puts " (⁽ؔ˙⁾ ⊝ ⁽ؔ˙⁾) Invalid selection, please try again  ლ(⁰ ⊖ ⁰ლ)"
    end
end
