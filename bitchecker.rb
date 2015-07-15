def bitchecker(n)
  return 'YES' if n.to_s(2).split('').map(&:to_i).select{|b| b == 1}.count == 1
  return 'NO'
end

puts "#{bitchecker(gets.to_i)}\n"
