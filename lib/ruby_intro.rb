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
  if s.match(/\A(?=[^A-Z])/i) or s.match(/^$/) 
    # If the sting starts with const/non-letters or is empty
    # Note: else statement by defaul handles empty string condition
    # Note: to check if string is empty we can also do s.empty?
    return false
  else
    # If the string starts with consonants
    return !!s.match(/\A(?=[^aeiou])/i)  
  end  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty? or s.match(/[^0-1]/)
    # Check if string is empty or contains anything 
    # other than 0 & 1 i.e., we have invalid binary number
    return false
  end 
  return s.to_i(2)%4 == 0
end

# Part 3

=begin
Instance variables of a class are declared as @instance_variable. A getter and setter for 
instance variable are methods that either print/"get" the value or "set" the value. we need 
these methods because instance variables are not accessible outside the object. 
GETTER:
def instance_variable
  @instance_variable
end
SETTER:
def instance_variable=(value)
  @instance_varialbe = value
end
We can also use an shortcut "metaprogramming" which will do the above for us:
attr_accessor :instance_variable 
Above line must be before initialize function
=end 


class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError.new("ISBN number string is empty!!!") if isbn.empty?
    raise ArgumentError, "Price can't be less than zero!!!" if price.to_f <= 0.00
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$".concat("%.2f"%price)
  end
end

