require 'pry'

class Character < ActiveRecord::Base
    belongs_to :user

    # # Write a custom method where you can find all the characters that have more than 10 defensive rating.
    # # self.method_name
    # # Define the method first
    # # Want to look for all characters (Chracters) WHERE the stats are greater than 10 defense
    
    # def self.good_defense
    #     defense = Character.where("def > 10")
    # end

    # # Write a custom method that takes in a parameter of n where you find all the characters that have more than n for their level. 
    # # If no characters are found, return an empty array.
    # # Consider strengthening ruby enumerables

    # def self.level_check(n)
    #     # Ternary? level_check.length < 0 ? [] : level_check
    #     # Can use Character.where("level > #{n}") but lets try an enumerable
    #     # Character.all.filter((char) where char.level > n))
    #     greater_than_n_level = Character.all.filter do |char|
    #         char.level > n
    #     end
        
    # end

    # # Write a custom method that is called “awesomeness” that returns a score based on the average of the strength magic and dexterity. 
    # # Round this number to the nearest integer and make sure you just return an integer.

    # def awesomeness
    #     average = (self.str + self.dex + self.mag) / 3
    # end
end