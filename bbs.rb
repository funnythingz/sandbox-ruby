a = gets.chomp.split.map(&:to_i)
b = [*(1..a.first)]
a.last.times{
  r = gets.chomp.to_i
  b.unshift(r)
}
b.uniq.each{|v|puts "#{v}\n"}
