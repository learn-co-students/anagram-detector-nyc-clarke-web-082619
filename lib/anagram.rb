class Anagram
    attr_accessor :word
    def initialize(word)
        @word = word
    end

    def match(array)
        arr1 = @word.split("").sort
        arr2 = []
        arr2 = array.select{|x|
            x.split("").sort == arr1
        }
    end
end