r = gets.chomp.to_i
a = [*(1..r)]
b = a.product(a).map do |i|
  i.first * i.last if i.first + i.last == r
end

puts "#{b.uniq.compact.max}\n"
