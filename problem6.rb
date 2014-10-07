=begin
The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the 
first ten natural numbers and the square of the sum is 3025  385 = 2640.

Find the difference between the sum of the squares of the first one 
hundred natural numbers and the square of the sum.
=end

#a,b = 0,0

#(0..100).to_a.each do |item|
#	a += item**2
#	b += item
#end

#p b**2 - a


p (0..100).inject(:+)**2 - (0..100).inject { |sum, n| sum + n*n }  
 