sum = 0
threads = 10.times.map do
  Thread.new do
    100_000.times do
      new_value = sum + 1
      print "#{new_value}   " if new_value % 250_000 == 0
      sum = new_value
    end
  end
end

threads.each(&:join)
puts "\nsum = #{sum}"

