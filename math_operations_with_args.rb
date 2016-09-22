# Get two numbers from args and operates them

# Load arguments into a and b variables
number_one, number_two = ARGV

a = number_one.to_i
b = number_two.to_i

# Operation result for +, -, *, /
puts "La suma es: #{a + b}"
puts "La resta es: #{a - b}"
puts "La multiplicación es: #{a * b}"
puts "La división es: #{a / b}"
