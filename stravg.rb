def m(s)
  s.delete('.').split(' ').map{|v|
    if v.match(/[\{\}]/)
      v.delete('{}').split(',').max_by{|v| v.size}.size
    else
      v.size
    end
  }
end

def main
  #in_s = gets.to_s
  in_s = '{That,This} is a {cat,dog,bea} the {hoge,hioge}.'
  a = []
  unless in_s.match(/[\{\}]/)
    a = in_s.delete('.').split(' ').map{|v|v.size}
  else
    a = m(in_s)
  end
  puts "#{a.inject(0.0){|r, i| r += i} / a.size}\n"
end

main
