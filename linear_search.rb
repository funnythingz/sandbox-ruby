def linear_search(arr, s)
  return nil unless arr.is_a?(Array)
  arr.each do |v|
    return v if v == s
  end
end

print linear_search((1..10).to_a, 3)
