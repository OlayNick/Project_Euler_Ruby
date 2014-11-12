=begin
Starting in the top left corner of a 2x2 grid, and only being able to move 
to the right and down, there are exactly 6 routes to the bottom right corner.
    
How many such routes are there through a 20x20 grid?
=end

class Integer 
  def choose(k) 
    (self-k+1 .. self).inject(1, &:*) / (2 .. k).inject(1, &:*) 
  end
end

puts 40.choose(20)