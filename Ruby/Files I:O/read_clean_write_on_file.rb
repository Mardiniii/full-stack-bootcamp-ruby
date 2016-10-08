breakline = "\n"
prompt = '> '
extension = '.txt'

# Get filename
puts "Can you give the filename please?"
print prompt
name = gets.chomp
filename = name + extension
puts breakline

# Opening the file
txt = open(filename, 'a')

# Cleaning the file
puts "Say goodbye to your info. We are truncating the file!"
# txt.truncate(0)
puts breakline

# Write data on file
puts "Now, please give me three lines to write into the file!"

# Capture Line 1 to write in file
print "Line 1: "
line_one = gets.chomp
puts breakline

# Capture Line 2 to write in file
print "Line 2: "
line_two = gets.chomp
puts breakline

# Capture Line 3 to write in file
print "Line 3: "
line_three = gets.chomp
puts breakline

puts "I'm going to write these to the file."
puts breakline

data = line_one + breakline + line_two + breakline + line_three + breakline

# Write on file
txt.write(data)
# txt.write(breakline)
# txt.write(line_two)
# txt.write(breakline)
# txt.write(line_three)
# txt.write(breakline)

puts "And finally, we close it."
txt.close