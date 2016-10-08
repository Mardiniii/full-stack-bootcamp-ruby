breakline = "\n"
the_count = [1, 2, 3, 4, 5]
students = ['Memo', 'Juan', 'Lili', 'Edison']

fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list
# in a more traditional style found in other languages
for number in the_count
  puts "This is count #{number}"
end

puts breakline

for student in students
  puts "Student: #{student}"
end

puts breakline

students.each do |student|
  puts "Student: #{student}"
end

puts breakline

students.each_with_index do |student, index|
  puts "Student #{index + 1}: #{student}"
end

puts breakline

4.times do
  puts 'Hi my friend!'
end

puts breakline

puts students[2]

puts breakline

puts students[1]

puts breakline

puts students.length
puts students.size

puts breakline

students.each { |student| puts "Student: #{student}" }