class TextCompressor
  attr_writer :unique_words, :content

  def initialize(text)
    @text = text
    @text_array = text.downcase.split(/[^[[:word:]]]+/)
    @unique_words = @text_array.uniq
    @content = []
  end

  def compress
    @text_array.each do |word|
      @content << @unique_words.index(word)
    end
  end

  def print_result
    puts @text
    puts @unique_words.inspect
    puts @content.inspect
  end

  def result
    return @unique_words, @content
  end
end

breakline = "\n"
prompt = '> '
puts 'Enter the text to compress:'
# Text to compress
string = gets.chomp

# Create a new text compressor object
text_compressor = TextCompressor.new(string)

# Compress the text
text_compressor.compress

# Use the getters for get results
words = text_compressor.unique_words
content = text_compressor.content
puts words.inspect
puts content.inspect

# Print the result
text_compressor.print_result

