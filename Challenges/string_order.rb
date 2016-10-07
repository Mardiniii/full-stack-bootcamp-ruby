words_size = gets.chomp.to_i
words = []
words_size.times do
  word = gets.chomp
  words.push(word)
end

words.each do |word|
  odd_chars = ''
  even_chars = ''
  word.each_char.with_index do |char, index|
    if index % 2 == 0
      even_chars = even_chars + char
    else
      odd_chars = odd_chars + char
    end
  end
  puts "#{even_chars} #{odd_chars}"
end