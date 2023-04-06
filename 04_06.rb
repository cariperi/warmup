#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum. (Pro-tip: Write a method or function do figure this out on your behalf—don't do this by hand.)

def find_difference(nums)
  square_of_sums(nums) - sum_of_squares(nums)
end

def square_of_sums(nums)
  (nums.sum)**2
end

def sum_of_squares(nums)
  nums.sum {|num| num**2}
end

first_10_nums = (1..10)
first_100_nums = (1..100)

p find_difference(first_10_nums)
p find_difference(first_100_nums)