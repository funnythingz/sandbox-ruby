a = gets.to_i
b, c = gets.chomp.split(/\s+/).map(&:to_i)
s = gets.chomp.to_s
puts "#{a + b + c} #{s}\n"
