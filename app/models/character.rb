class Character < ActiveRecord::Base
    belongs_to :user

    
    # Write a custom method where you can find all the characters that have more than 10 defensive rating.
    # self.method_name
    # Define the method first
    # Want to look for all characters (Chracters) WHERE the stats are greater than 10 defense
    
    def self.good_defense
        defense = Character.where("def > 10")
    end

    # Write a custom method that takes in a parameter of n where you find all the characters that have more than n for their level. 
    # If no characters are found, return an empty array.
    # Consider strengthening ruby enumerables

    # Write a custom method that is called “awesomeness” that returns a score based on the average of the strength magic and dexterity. 
    # Round this number to the nearest integer and make sure you just return an integer.
end