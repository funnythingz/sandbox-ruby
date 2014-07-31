0..24.times do |hour|
  0..60.times do |minute|
    p "#{sprintf("%0#{2}d", hour)}:#{sprintf("%0#{2}d", minute)}"
  end
end
