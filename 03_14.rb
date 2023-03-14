#     Now, the challenge is to find two or more other numbers, composed of four figures, all different, which may be divided in the middle and produce the same result.


# def solution
#   n = 1
#   number_combos = []
#   while number_combos.length < 3
#     for k in 1..n
#       number_combos << [n, k] if (n + k)**2 == (n.to_s + k.to_s).to_i
#     end
#     n += 1
#   end
# end

# p number_combos
# p solution


p find_figures