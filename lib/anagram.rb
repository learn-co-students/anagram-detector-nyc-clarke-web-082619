# Your code goes here!
class Anagram
    attr_reader :sorted
   def initialize(word)
    @sorted = word.split("").sort.join
   end

   def match(array)
    array.select {|word| sorted == word.split("").sort.join}
   end

end
