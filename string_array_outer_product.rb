# Array#map
def cross(a, b)
  a.map{|elem_a| b.map{|elem_b| elem_a.to_s + elem_b.to_s}}.flatten
end

# Array#product
def cros(a,b)
  a.product(b).map{|elem| elem.join()}
end

puts cros([1,2,3], [4,5,6])
