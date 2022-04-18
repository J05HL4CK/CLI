# frozen_string_literal: true

# Budget planner calculations
module BudgetFunctions
  # 1/365 days a yr
  def self.daily(amount)
    n1 = amount
    daily = n1 / 365.25
    puts daily
  end

  # 1/52 weeks a year
  def self.weekly(amount)
    weekly = amount / 52.0
    puts weekly
  end

  # 1/26.07th of a year is a fortnight
  def self.fortnightly(amount)
    fortnightly = amount / 26.07
    puts fortnightly
  end

  # 1/12th of a year = 1 month
  def self.monthly(amount)
    (1.0 / 12) * amount
  end

  # keep it simple!
  def self.difference(var1, var2)
    puts "#{var1 - var2}" 
  end

  def self.product(var1, var2)
    var1 * var2
    puts "#{var1 * var2}"
  end
  def self.sum(var1, var2)
    puts "#{var1 + var2}"
  end
end

# BudgetFunctions.fortnightly(26000)
BudgetFunctions.difference(2, 5)
