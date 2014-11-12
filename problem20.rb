=begin
n! means n x (n - 1) x ... x 3 x 2 x 1

For example, 10! = 10 x 9 x ... x 3 x 2 x 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!
=end

# version 1
def factorial n
  n > 1 ? n * factorial(n - 1) : 1
end

p factorial(100).to_s.split(//).inject(0) {|sum,n| Integer(n) + sum}

# version 2
p (1..100).inject(:*).to_s.split('').map {|x| x.to_i}.inject :+


