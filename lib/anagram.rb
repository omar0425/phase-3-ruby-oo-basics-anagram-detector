# Your code goes here!
require "pry"
class Anagram
  attr_reader :word
  def initialize(input)
    @word = input 
  end
def match(array)
word_letters = @word.split("")
array.filter do |wd|
  wd.split("").sort == word_letters.sort
end
end
end


listen = Anagram.new("listen")
listen.word
listen.match(%w[enlists google inlets banana])
binding.pry
puts