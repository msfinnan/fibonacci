# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: Time complexity is linear, or O(n) where n is the number input into the method. This method will always run n times, so if n is 5 it will run 5 times and if n is 5000 it will run 5000 times.
# Space complexity: Space complexity is constant or O(1) since there are three variables, no matter the size of n. The number of variables does not grow with the input.

def fibonacci(n)
  if n == nil || n < 0
    raise ArgumentError, "Enter a positive interger"
  end
  first = 0
  second = 1
  n.times do
    third = first + second
    first = second
    second = third
  end
  return first
end
