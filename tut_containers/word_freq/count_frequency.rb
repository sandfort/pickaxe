def count_frequency(word_list)
  counts = Hash.new(0) # This initializer sets the default value for any key
  for word in word_list
    counts[word] += 1 # Values start at 0, so this is guaranteed to be a number
  end
  counts
end

