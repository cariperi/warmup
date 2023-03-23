#    **Can you write a program that "sings" the classic "100 Bottles of Beer on the Wall"?**

def sing_it
  count = 100
  until count == 1 do
    puts "#{count} bottles of beer on the wall, #{count} bottles of beer. Take one down, pass it around..."
    count -= 1
    puts "now there's #{count} more bottles of beer on the wall!"
  end
  puts "#{count} bottle of beers on the wall, #{count} bottle of beer. Take one down, pass it around, now there's no more beer on the wall!"
end

sing_it