=begin
215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 21000?
=end

p (2**1000).to_s.split(//).map {|x| x.to_i}.inject(:+)

p (2**1000).to_s.split(//).inject(0) {|sum, i| sum + Integer(i)}



