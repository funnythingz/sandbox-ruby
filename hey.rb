require 'pp'

def main
  p 'ready?'
  input_a = gets.to_i
  input_bc = gets.split(/\s+/).map(&:to_i).inject(0) { |sum, i| sum + i }
  input_s = gets.to_s
  p "#{input_a + input_bc} #{input_s}"
end

main
