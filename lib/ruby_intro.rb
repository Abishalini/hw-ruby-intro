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
  # A multiple of 4 in binary is any binary numeber that ends with 00
  return true if s == "0"
	/^[10]*00$/.match(s) != nil  
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
