# Terminal Application Requirements

1. ## References

    This app was inspired by the Commonwealth Bank of Australia’s Budget Planner <https://www.commbank.com.au/digital/calculators/budget-planner-calculator>.

2. ## GitHub Repository

    <https://github.com/J05HL4CK/term-app.git>

3. ## Styling convention

    Ruby style in convention with <https://rubystyle.guide/> using Rubocop

4. ## Features
    
    - Budget calculator
    
        This feature allows the user to enter their annual salary, bonuses and expenses. The user is given the option of specifying category names and unique expense items. This feature shows a summarised list of incomings and outgoings based on a timeframe chosen by the user (Weekly, Monthly, Quarterly, Yearly).

    - Savings Tracker

        This feature allows the user to enter an initial savings amount and stamps it with a time for future reference. The user is able to update savings by adding or deleting amounts which are timestamped. Following on from this, savings amount is displayed and timestamps so the user can see their savings grow. The weekly disposable income is displayed in this feature also.

    - Goals

        This feature allows the user to enter a name and an amount for short, mid and long term financial goals. This is used to compare the current savings against and is displayed to the user. User is able to input a value and have the time it would take to reach the goal, saving the specified amount each week, month etc displayed.


5. ## Implementation plan

    <https://josh-lack.atlassian.net/jira/software/projects/CHEEP/boards/1/backlog>
    <https://trello.com/invite/userworkspace41320758/9ae0a26b172ecdff085e79ec58e02501>
    

6. ## Help Docs
   
    Download Ruby  <https://www.ruby-lang.org/en/downloads/>

    ### Installing

    CHEEP is a Command Line Application

    Clone the source files from <https://github.com/J05HL4CK/term-app.git>

    #### GEMS
    
    CHEEP relies on 4 gems
    - Money
    - TTY-Prompt
    - Colorize
    - As a user, you're a gem to me. Thanks for using CHEEP