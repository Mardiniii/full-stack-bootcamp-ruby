breakline = "\n"
prompt = '> '
extension = '.txt'

# Get the source filename
puts "Can you give the origin filename please?"
print prompt
name_one = gets.chomp
filename_one = name_one + extension
puts breakline

# Get the target filename
puts "Can you give the target filename please?"
print prompt
name_two = gets.chomp
filename_two = name_two + extension
puts breakline

# Open files
puts 'Loading files... '
txt_one = open(filename_one)
txt_two = open(filename_two, 'a')
puts breakline

# Read data from source file
puts 'Reading data from source file... '
data = txt_one.read + breakline
puts breakline

# Write data into target file
puts 'Writing data from target file... '
txt_two.write(data)
puts breakline

txt_one.close
txt_two.close

puts 'Done! '