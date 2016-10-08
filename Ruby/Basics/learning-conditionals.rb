breakline = "\n"

print 'Name: '
name = gets.chomp

print 'Age: '
age = gets.chomp.to_i

print 'Profession: '
profession = gets.chomp

puts breakline

if name == 'Sebastian'
  puts 'He is Sebastian!'
elsif name == 'Nicolas'
  puts 'Thanks for coming Nico!'
else
  puts 'Where is Sebastian? Is Nico here?'
end

if age <= 20
  puts "You're a baby!"
elsif age > 20 && age <= 30
  puts "You're so young!"
else
  puts "You're in the middle of life!"
end

if profession == 'WEB Developer'
  puts "#{name} is a happy boy!"
else
  puts 'You must learn to code!'
end