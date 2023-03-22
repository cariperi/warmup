class StringReverser
  def self.reverse(word)
    reversed_word = ""
    i = word.length - 1
    until i < 0 do
      reversed_word += word[i]
      i -= 1
    end
    reversed_word
  end

  def self.length(word)
    length = 0
    word.each_char {|char| length += 1}
    length
  end
end

p StringReverser.reverse("skittles")
p StringReverser.length("skittles")
