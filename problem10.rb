=begin
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
=end
require 'mathn' 
arr =[]
list_primes = Prime.new
list_primes.each { |prime| arr << prime; break if arr.last >= 2000000}
arr.delete_at(arr.size - 1)
p arr.inject(:+)
 