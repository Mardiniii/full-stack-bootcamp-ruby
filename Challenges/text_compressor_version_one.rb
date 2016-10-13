# Codificado
# words = [ 'This', 'specification', 'is', 'the', 'for', 'a' ]
# content = [ 0, 1, 2, 3, 2, 4, 5, 2 ]

# # Decodificado
# space = ' '
# message = "#{words[0] + space + words[1] + space + words[2] + space + words[3] + space + words[1] + space + words[4] + space + words[5] + space + words[1] }"

# This is the information This is the info to compres this is the info

breakline = "\n"
prompt = '> '

puts 'Enter the text to compress:'
# Text to compress
string = gets.chomp
# Text to compres as an array of strings
text_array = string.downcase.split
# Array of unique words
words = string.downcase.split.uniq
# Codificated content
content = []

text_array.each do |word|
  content << words.index(word)
end

puts words.inspect
puts content.inspect
