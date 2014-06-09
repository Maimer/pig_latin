require 'pry'

class PigLatin

  def initialize(word)
    @word = word.downcase
  end

  def translate
    if @word[0] =~ /^[^aeiou]+/
      match_word = /^[^aeiou]+/.match(@word)
      @word[match_word[0].length..-1] + match_word[0] + 'ay'
    elsif @word[0] =~ /^[aeiou]/
      @word + 'way'
    end
  end

end
