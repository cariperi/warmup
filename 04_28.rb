data = [
  ['Frank', 33],
  ['Stacy', 15],
  ['Juan', 24],
  ['Dom', 32],
  ['Steve', 24],
  ['Jill', 24]
]

# level 1

def names_by_age(data)
  result = data.sort_by {|sub_array| -sub_array[1]}
  result.each {|sub_array| puts "#{sub_array[0]} (#{sub_array[1]})"}
end

def hash_by_age(data)
  hash = {}
  data.each {|sub_array| hash[sub_array[1]] = []}
  data.each {|sub_array| hash[sub_array[1]] << sub_array[0]}
  hash
end

# p names_by_age(data)
p hash_by_age(data)