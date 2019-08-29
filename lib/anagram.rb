class Anagram

attr_accessor :word

def initialize(word)
    @word = word
end

def alpha(word) 
   result = word.split("").sort_by(&:downcase).join
   result
end

def match(array)
    word_sorted = alpha(@word)
    array.select! do |each_word|
        alpha(each_word) == word_sorted
    end
end

end
