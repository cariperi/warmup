def odd_heavy?(arr)
  return false if arr.all?(&:even?)

  odds = []
  evens = []

  arr.each { |x| x.odd? ? odds << x : evens << x }

  odds.each do |x|
    return false if evens.any? { |y| x < y }
  end

  true
end

a = [0, 2, 19, 4, 4]
b = [1, -2, -1, 2]
p odd_heavy?(a)
p odd_heavy?(b)
