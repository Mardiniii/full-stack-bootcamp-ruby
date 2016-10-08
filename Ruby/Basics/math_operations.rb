# Get two numbers from the user and operates them

# Capture first number
puts 'Number 1: '
a = gets.chomp.to_i

# Capture second number
puts 'Number 2: '
b = gets.chomp.to_i

# Operation result for +, -, *, /
puts "La suma es: #{a + b}"
puts "La resta es: #{a - b}"
puts "La multiplicación es: #{a * b}"
puts "La división es: #{a / b}"