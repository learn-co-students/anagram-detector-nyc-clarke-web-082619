# Your code goes here!

class Anagram


    def initialize(string)
        @string = string
    end

    def match(words)
        array = []
        words.each do |word|
            if word.chars.sort(&:casecmp) == @string.chars.sort(&:casecmp)
                array << word
            end
        end
        array
    end
end

