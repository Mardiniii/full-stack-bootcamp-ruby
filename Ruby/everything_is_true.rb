number = 9
text = 'Hi Ruby!'
my_variable = 'false'
status = false
user = nil

if number
  puts 'Bingo!'
end

if text
  puts 'Bingo!'
end

if my_variable
  puts 'Bingo!'
end

if status
  puts 'Bingo!'
end

if user
  puts 'Bingo!'
end

print 'Age: '
age = gets.chomp.to_i

who_is =  if age == 27
            'Sebastian'
          elsif age == 23
            'Nicolas'
          end

if who_is == 'Sebastian'
  puts "It is Sebastian's age"
elsif who_is == 'Nicolas'
  puts "It is Nico's age"
end

# Condition ? expression when true : expression when false
puts who_is == 'Sebastian' ? 'Is Sebastian' : 'He is not Sebastian'

# if as modifier
puts 'Hi Sebas!' if who_is == 'Sebastian'

# Unless
unless who_is == 'Nicolas'
  puts 'Nico is not here!'
end

case who_is
when 'Sebastian'
  puts 'Hi Sebastian from the case'
when 'Nicolas'
  puts 'Hi Nico from the case'
else
  puts 'Buuuuhhhh!!'
end








