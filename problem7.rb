arr = (1..100000).select { |x| (1..x).select {|y| x % y == 0 }.size == 2 }
p arr[10000]