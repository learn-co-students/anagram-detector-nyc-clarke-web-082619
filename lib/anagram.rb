# Your code goes here!
require 'pry'
class Anagram

    attr_accessor :master, :master_letters

    def initialize(master)
        @master = master
        @master_letters = master.split("").sort
    end

    def match(word_list)
        matches_list = word_list.select do |word|
            counter = 0
            word_letters = word.strip.split("").sort
            identical = true
            if (word_letters.length == @master_letters.length) then
                while (identical && (counter < word_letters.length)) do
                    if (@master_letters[counter] != word_letters[counter]) then
                        identical = false
                    end
                    counter += 1
                 end
            else
                identical = false
            end
            identical
        end
        matches_list
    end

end