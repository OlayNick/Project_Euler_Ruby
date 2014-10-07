=begin
A palindromic number reads the same both ways. 
The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

#poli = []
#(10000..999*999).each { |i| poli << i if i.to_s == i.to_s.reverse }

#p poli
=begin
numbers = []
(100).step(999,1) do |first|
  (100).step(999,1) do |second|
    numbers.push first * second
  end
end
 
#находим палиндром
polinoms = []
numbers.map do |subnumber|
  polinoms << subnumber if subnumber.to_s == subnumber.to_s.reverse
end
 
#максимальный палиндром
puts polinoms.max
=end


m = 0
901.upto(999) {|a| 
	901.upto(999) {|b| 
		s = (a*b).to_s 
		m = [m, a*b].max if s == s.reverse
	}
}
puts m

