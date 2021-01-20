class Anagram
    attr_accessor :anagram

    def initialize(anagram)
      @anagram = anagram
    end
  
    def match(words)
      words.select do |word|
        anagram?(word)
      end
    end
  
    def anagram?(word)
      word.chars.sort == @anagram.chars.sort
    end
end