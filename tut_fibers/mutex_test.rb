mutex = Mutex.new
a = 0

thread1 = Thread.new do
  10.times do
    mutex.synchronize do
      print "thread1: synchronizing\n"
      sleep 1
      a += 1
      print "thread1: touching a: #{a}\n"
    end
    print "thread1: desynchronizing\n"
  end
end

thread2 = Thread.new do
  10.times do
    mutex.synchronize do
      print "thread2: synchronizing\n"
      sleep 1
      a += 1
      print "thread2: touching a: #{a}\n"
    end
    print "thread2: desynchronizing\n"
  end
end

thread1.join
thread2.join

