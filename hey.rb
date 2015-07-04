def main
  a = gets.to_i
  bc = gets.chomp.split(/\s+/).map(&:to_i).inject(0) { |sum, i| sum + i }
  s = gets.chomp.to_s
  print "#{a + bc} #{s}\n"
end

main
