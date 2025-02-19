#things i want to work with
#name of whats displayed
# some headings
require "colorize"
module Headings
    @cool_spacer = "*-*".colorize(:color => :light_black, :background => :light_cyan) * 28
    @spacer = "-".colorize(:color => :light_black, :background => :light_cyan) * 84
    def self.start

        puts " Created by Joshua Lack                                                             ".colorize(:color => :magenta, :background => :light_cyan)
        puts " L337 BUDG37 4PP 4 N3RD5                                                                        ".colorize(:color => :light_cyan, :background => :light_cyan)
        
        puts "              ..-==\"\"\"\"==__                                                     ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "              /              \\                                                     ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "          ___/   <0)          \\                                                    ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "       _=\"___\\                |                                                   ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "        =__  /                |                                                     ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "           ~~\\_              /___                                                  ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "              \"/      ,.=\"~~~\"==_\"\"=__                                         ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "              /^ ^  .\" \\ \\ \\ \\ \\ \"=_  \"\"=_                                 ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "              | ^ ^ |\"-_ \\ \\ \\ \\ \\ \=_    \"\"=_                              ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "               \\ ^  \___\"-_\\ \\ \\ \\ \\ \=_      \"=_                           ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "                \\ ^ ^\\ _____\\_\\_\\_\\_\\_\\_\"=_      \"=_                      ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "                 \\ ^  ^\ -_-_-_-_-_-_-_-_-_\"=_      \"=_                          ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "                  \\^ ^  \"-=_ -_-_-_-_-_-_-_-_-\"\"=__    \"=_                     ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "                   \\\"=_ ^  ^ \"-_ -_-_-_-_-_-_-_-_-_-\"=_    \"=_                 ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "                      \\\"=_^     ~~\"\"-===_______________\\      \"=.___________  ".colorize(:color => :light_yellow, :background => :light_cyan)  
        puts "                         \"\"=_      -----______           _______\\_------- /      ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "                             \"\"=-_______      \"\"\"\________=. \\  -_ -.\"-- /   ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "                              // -- /   ~~~~--_   |         \". \  -_ ~- /          ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "                               \\ \\  \\    ______\"\"\"            \"=_\\  \"-./   ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "                                  \\ ----- -------\"               -_\\  /          ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "                                  // --- /                         - /              ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "                                   \\ \\  \\                           ~            ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "                                      \\ \\                                         ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "                /$$$$$$  /$$   /$$ /$$$$$$$$ /$$$$$$$$ /$$$$$$$                     ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "               /$$__  $$| $$  | $$| $$_____/| $$_____/| $$__  $$                    ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "              | $$  \\__/| $$  | $$| $$      | $$      | $$  \\ $$                  ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "              | $$      | $$$$$$$$| $$$$$   | $$$$$   | $$$$$$$/                    ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "              | $$      | $$__  $$| $$__/   | $$__/   | $$____/                     ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "              | $$    $$| $$  | $$| $$      | $$      | $$                          ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "              |  $$$$$$/| $$  | $$| $$$$$$$$| $$$$$$$$| $$                          ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts "               \\______/ |__/  |__/|________/|________/|__/                         ".colorize(:color => :light_yellow, :background => :light_cyan)
        puts " Thanks so much for downloading my app. I hope you find it useful!                                                                                     .".colorize(:color => :light_cyan, :background => :light_cyan)
        puts " If you have any ideas for how CHEEP could be improved please feel free to contribute!                                      .".colorize(:color => :light_cyan,:background => :light_cyan)
        puts " Version 1.0                                      Source githublink                 ".colorize(:color => :magenta, :background => :light_cyan)                                               
        
                                                        
                                                        
    
    end
    def Headings.welcome
        
        puts @spacer
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
        
        puts @cool_spacer
        puts @spacer.colorize(:color => :light_cyan,:background => :light_cyan)
        puts  "                              B U D G E T  T O O L                           ".colorize(:color => :magenta, :background => :light_cyan)
        puts @spacer.colorize(:color => :light_cyan,:background => :light_cyan)
        puts @cool_spacer
        puts @spacer.colorize(:color => :light_cyan,:background => :light_cyan)
        puts "      ϵ( ‘ ◇ ’ )϶    Use the budget tool to track your expenses       ϵ( ‘ ◇ ’ )϶      ".colorize(:color => :magenta, :background => :light_cyan)
        puts @spacer.colorize(:color => :light_cyan,:background => :light_cyan)
        puts @spacer
        puts @spacer.colorize(:color => :light_cyan,:background => :light_cyan)
    end
    def Headings.savings
        system "clear"
        puts @cool_spacer
        puts @spacer.colorize(:color => :light_cyan,:background => :light_cyan)
        puts  "                              S A V I N G S  T O O L                           ".colorize(:color => :magenta, :background => :light_cyan)        
        puts @spacer.colorize(:color => :light_cyan,:background => :light_cyan)
        puts @cool_spacer
        puts @spacer.colorize(:color => :light_cyan,:background => :light_cyan)
        # short description of function
        puts "(　＾ Θ ＾) Use the savings tool to track your savings (＾ Θ ＾  ) ".colorize(:color => :magenta, :background => :light_cyan)
        puts @spacer.colorize(:color => :light_cyan,:background => :light_cyan)
        puts @spacer
    end
    def Headings.goals
        system "clear"
        # instance variable associated with the YEEEEEEEEEET heredoc (goals header)
        @goalsyboy = <<-YEET
        *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*     
        *                                                             *     
        *                      GOALS TOOL                             *     
        *                                                             *     
        *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
        YEET
        puts @goalsyboy.colorize(:color => :magenta, :background => :light_cyan)

    end
    def Headings.invalid_warning
        system "clear"
        puts " (⁽ؔ˙⁾ ⊝ ⁽ؔ˙⁾) Invalid selection, please try again  ლ(⁰ ⊖ ⁰ლ)"
    end
end
# start_page = <<-CHEEP
        # ..-==\"\"\"\"==__                                                    
        # /              \\                                                    
    # ___/   <0)          \\                                                   
#  _=\"___\\                |                                                  
#   =__  /                |                                                    
    #  ~~\\_              /___                                                 
        # \"/      ,.=\"~~~\"==_\"\"=__                                        
        # /^ ^  .\" \\ \\ \\ \\ \\ \"=_  \"\"=_                                
        # | ^ ^ |\"-_ \\ \\ \\ \\ \\ \=_    \"\"=_                             
        #  \\ ^  \___\"-_\\ \\ \\ \\ \\ \=_      \"=_                          
        #   \\ ^ ^\\ _____\\_\\_\\_\\_\\_\\_\"=_      \"=_                     
        #    \\ ^  ^\ -_-_-_-_-_-_-_-_-_\"=_      \"=_                         
            # \\^ ^  \"-=_ -_-_-_-_-_-_-_-_-\"\"=__    \"=_                    
            #  \\\"=_ ^  ^ \"-_ -_-_-_-_-_-_-_-_-_-\"=_    \"=_                
                # \\\"=_^     ~~\"\"-===_______________\\      \"=.___________ 
                #    \"\"=_      -----______           _______\\_------- /     
                    #    \"\"=-_______      \"\"\"\________=. \\  -_ -.\"-- /  
                        # // -- /   ~~~~--_   |         \". \  -_ ~- /         
                        #  \\ \\  \\    ______\"\"\"            \"=_\\  \"-./  
                            # \\ ----- -------\"               -_\\  /         
                            # // --- /                         - /             
                            #  \\ \\  \\                           ~           
                                # \\ \\                                        
        #   /$$$$$$  /$$   /$$ /$$$$$$$$ /$$$$$$$$ /$$$$$$$                    
        #  /$$__  $$| $$  | $$| $$_____/| $$_____/| $$__  $$                   
        # | $$  \\__/| $$  | $$| $$      | $$      | $$  \\ $$                 
        # | $$      | $$$$$$$$| $$$$$   | $$$$$   | $$$$$$$/                   
        # | $$      | $$__  $$| $$__/   | $$__/   | $$____/                    
        # | $$    $$| $$  | $$| $$      | $$      | $$                         
        # |  $$$$$$/| $$  | $$| $$$$$$$$| $$$$$$$$| $$                         
        #  \\______/ |__/  |__/|________/|________/|__/ 
        # 
        # 
        # CHEEP
# 
        # 
# puts start_page.colorize(:color => :light_yellow, :background => :light_cyan)
