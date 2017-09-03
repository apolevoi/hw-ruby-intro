# When done, submit this entire file to the autograder.

# Part 1

#Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements. 
#For an empty array it should return zero. 

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

#Define a method max_2_sum(array) which takes an array of integers as an argument and returns the sum of its two 
#largest elements. For an empty array it should return zero. For an array with just one element, it should
#return that element.

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty? 
    return 0
  elsif arr.size == 1
    return arr[0]
  else arr.max(2).reduce(:+)
  end
end

#Define a method sum_to_n?(array, n) that takes an array of integers and an additional integer, n,
#as arguments and returns true if any two elements in the array of integers sum to n. sum_to_n?([], n) should
#return false for any value of n, by definition

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty? 
    return false
  elsif arr.size == 1
    return false
  else 
    return arr.permutation(2).any? { |a, b| a + b == n }
  end
end

# Part 2

#Define a method hello(name) that takes a string representing a name and 
#returns the string "Hello, " concatenated with the name

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

#Define a method starts_with_consonant?(s) that takes a string and returns true if it starts with a 
#consonant and false otherwise. (For our purposes, a consonant is any letter other than A, E, I, O, U.) 
#NOTE: be sure it works for both upper and lower case and for nonletters!
def starts_with_consonant? s
  # YOUR CODE HERE
      s =~ /\A[bcdfghjklmnprstvwxyz]/i
end

#Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string represents a
#binary number that is a multiple of 4. NOTE: be sure it returns false if the string is not a valid binary number!

def binary_multiple_of_4? s
  # YOUR CODE HERE
   if s == "0"
     return true
   else
    s =~ /^[10]*00$/
   end
end

# Part 3

class BookInStock
# YOUR CODE HERE

  def initialize isbn, price
    @isbn = isbn
    @price = price
    raise ArgumentError if price <= 0
    raise ArgumentError if isbn == ""
  end
  
  def price
    @price
  end
  
  def isbn
   @isbn
  end
  
  def price=(price)
    @price = price
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price_as_string
    "$%.2f" % @price
  end
    
end
