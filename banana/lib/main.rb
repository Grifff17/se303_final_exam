# These three functions suffer from the "Data Clump" smell.
# Cure the smell, and keep the test green and unchanged.
# Hint: Let the existing functions use the new code that you
#       write.

def word_count(beginning, middle, conclusion)
  [beginning, middle, conclusion].map{ |i| words(i)}.sum
end

def letter_count(beginning, middle, conclusion)
  [beginning, middle, conclusion].map{ |i| i.size}.sum
end

def period_count(beginning, middle, conclusion)
  periods(beginning) +
  periods(middle) +
  periods(conclusion)
end

def words(phrase)
  phrase.split.size
end

def periods(phrase)
  phrase.scan(/\./).size
end