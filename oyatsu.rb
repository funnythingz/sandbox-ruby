a = gets.chomp.split.map(&:to_i)
r = []
a.first.times{
  r << gets.chomp.split.map(&:to_i)
}

def check(arr, max)
  r = []
  arr.combination(2) do |_d, _e|
    r << (_d.first + _e.first <= max)
  end
  o = r.uniq
  return o.size == 1 && o.first == true
end

z = []
r.combination(3) do |_a, _b, _c|
  d = [_a,_b,_c]
  if check(d, a.last)
    z << d.map{|v|v.last}.reduce(:+)
  end
end

puts "#{z.max}\n"
