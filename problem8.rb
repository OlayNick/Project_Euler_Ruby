
arr,arr2 =[],[]
a = 7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450
a.to_s.split(//).map {|n| arr << n.to_i}
arr.each_cons(13) {|n| arr2 << n}
p arr2.map {|n| n.inject(:*)}.max

	


#a.split(//)




=begin

SERIES = "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"
# SERIES = "73167176531330624919"

def find_largest_product_in_string(number_of_adjacent_digits)
  @digits = number_of_adjacent_digits
  @series = SERIES
  @length = @series.length
  @product = 1
  @highest_product = 0

  @array_of_numbers = @series.split("").map { |s| s.to_i }
  puts "length = #{@length}"
  puts "digits = #{@digits}"
  0.upto(@length-@digits) do |x|
    0.upto(@digits-1) do |y|
      # puts "#{x}, #{y}: array_of_numbers[#{x+y}] = #{@array_of_numbers[(x+y)]}"
      @product = @product * (@array_of_numbers[(x+y)])
    end
    if @product > @highest_product
      @highest_product = @product
      puts "highest_product so far, #{@highest_product}"
    end
    @product = 1
  end
  return @highest_product
end

puts "highest_product = #{find_largest_product_in_string(13)}"

=end




