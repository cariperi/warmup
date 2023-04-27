#count characters in a string
def count_characters(file_name)
  file = File.open(file_name)
  data = file.read.split("")

  count_hash = Hash.new(0)
  data.each {|char| count_hash[char] += 1 }

  sorted = count_hash.sort_by { |char, num| [-num, char] }

  sorted.each do |pair|
    puts "#{pair[0]}: #{pair[1]}"
  end
end

count_characters("sample_2.txt")
