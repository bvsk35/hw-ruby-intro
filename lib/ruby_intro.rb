# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  case arr.length 
    when 0
      return 0 # arr is empty 
    when 1
      return arr.first # Return the only element present in arr
    else 
      return arr.max(2).reduce(:+)
  end 
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  case arr.length
    when 0
      return false # arr is empty
    when 1 
      return false # arr contains only single element 
    else
      return arr.uniq.combination(2).any? { |a, b| a + b == n }
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return ("Hello, " + "#{name}")
end

def starts_with_consonant? s
  # YOUR CODE HERE 
  sdasdsa asdsad 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
