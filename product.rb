def cross(a,*b)
  p a.product(*b)
  a.product(*b).map{|elem| elem.join()}
end

cross([1,2,3], [4,5,6,7])
