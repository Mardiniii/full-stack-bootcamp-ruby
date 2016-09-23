# Get name visitor from command line
name = ARGV.first

prompt = '> '
breakline = "\n"

puts "Hi #{name}"
puts 'My name is Ruby!'
puts "I'd like to ask you a few questions."
puts breakline

puts "Do you like me #{name}?"
print prompt
likes = $stdin.gets.chomp
puts breakline

puts "Where do you live #{name}? "
print prompt
lives = $stdin.gets.chomp
puts breakline

puts "What kind of computer do you have? "
print prompt
computer =  $stdin.gets.chomp
puts breakline

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer.  NNNNNNNice!.
"""
