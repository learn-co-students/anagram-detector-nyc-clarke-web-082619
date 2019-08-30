# Your code goes here!
require 'pry'
class Anagram
    attr_accessor :word
    def initialize(word)
        @word = word
    end

    def sort_word
        @word.chars.sort.join()
    end

    def match(anagram_array)
        result = []
        n = 0

        sorted_anagram = anagram_array.map {|anagram| anagram.chars.sort.join()} 

        while n < sorted_anagram.length do 
            if sort_word == sorted_anagram[n]
                result << anagram_array[n]
            end
            n += 1
        end

        result
    end

end

