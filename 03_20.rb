@scores = {
  "A"=>1, "B"=>3, "C"=>3, "D"=>2,
  "E"=>1, "F"=>4, "G"=>2, "H"=>4,
  "I"=>1, "J"=>8, "K"=>5, "L"=>1,
  "M"=>3, "N"=>1, "O"=>1, "P"=>3,
  "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
  "U"=>1, "V"=>4, "W"=>4, "X"=>8,
  "Y"=>4, "Z"=>10
}

def score_array(word)
  word.map do |letter|
    letter = letter.upcase
    puts "#{letter} has the value #{@scores[letter]}"
  end
end

def score_string(word)
  word.split("").map do |letter|
    letter = letter.upcase
    puts "#{letter} has the value #{@scores[letter]}"
  end
end

# def total_score_string(word)
#   score = 0
#   word.split("").map {|letter| score += @scores[letter.upcase]}
#   puts "#{word} has a total score #{score}"
# end

def total_score_string(word)
  score = word.split("").sum {|letter| @scores[letter.upcase]}
  puts "#{word} has a total score #{score}"
end

word = ['H', 'E', 'L', 'L', 'O']
score_array(word)

word = "hello"
score_string(word)
total_score_string(word)



