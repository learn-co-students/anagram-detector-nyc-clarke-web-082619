class Anagram 
attr_accessor :word 


    def initialize(word)
        @word = word
    end 

    def match(anagram_array) #returns all matches in an array 
        match_ary = [] 
        anagram_array.each do |new_word| 
            if new_word.split("").sort == @word.split("").sort
                match_ary << new_word
            end 
        end 
        return match_ary
    end 

end 

# anagram_array = ["hello", "world", "zombies", "pants", "dipper"]
# word = diaper 