# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort.last(2).inject(0, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.permutation(2).to_a.any? { |x| x.inject(0, :+) == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # A multiple of 4 in binary is any binary number that ends with 00
  return true if s == "0"
	/^[10]*00$/.match(s) != nil  
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError.new("ISBN is an empty string!") if isbn.empty?
    raise ArgumentError.new("Price should be greater than zero") if price <= 0
    @isbn = isbn
    @price = price
  end
  
  attr_reader :isbn, :price

  def isbn=(isbn)
    raise ArgumentError.new("ISBN is an empty string!") if isbn.empty?
    @isbn = isbn
  end
  
  def price=(price)
    raise ArgumentError.new("Price should be greater than zero") if price <= 0
    @price = price
  end
  
  def price_as_string
    format '$%.2f', @price
  end
  
end
