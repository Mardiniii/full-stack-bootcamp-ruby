prompt = '> '
breakline = "\n"
puts "Where are the students of Make It Real?"
print prompt
name = gets.chomp
extension = '.txt'

filename = name + extension

puts breakline

puts 'Now, let me introduce you the next generation of developers: '

puts breakline

txt = open(filename)
puts txt.read

puts breakline
puts 'Good luck learning to code!'