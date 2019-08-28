class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(possible_anagrams)
    matches = []
    possible_anagrams.each do |str| 
    matches << str if str.chars.sort == self.word.chars.sort
    end 
    matches 
  end
end