class Box
  attr_reader :height, :width, :length, :color, :material, :cover, :number

  # Class variable to control number of boxes
  @@count = 0

  # height, width, length => cm
  # cover => boolean
  # Constructor
  def initialize(height, width, length, color, material, cover)
    @@count += 1
    @height = height
    @width = width
    @length = length
    @color = color
    @material = material
    @cover = cover
    @number = @@count
  end

  # Instance Methods
  def print_area
    "The area is: #{area}"
  end

  def volume
    @height * @width * @length
  end

  # Setters
  def set_width=(value)
    @width = value
  end

  def set_height=(value)
    @height = value
  end

  # to_s method
  def to_s
    "(Width: #{@width},Height: #{@height}, Color: #{@color})"  # string formatting of the object.
  end

  # Class Methods
  def self.number_of_boxes
    puts "Number of boxes: #{@@count}"
  end

  private

  def area
    @cover ? 2 * ( @width * @height + @length * @height + @length * @width ) : 2 * (@width * @height + @length * @height ) + @length * @width
  end
end

breakline = "\n"

cajita = Box.new(7, 8, 10, 'blue', 'wood', false)

puts 'Cajita de Madera'
puts cajita.color
puts cajita.width
puts cajita.height
puts "Volume: #{cajita.volume}"
puts "Area: #{cajita.print_area}"
puts "Number: #{cajita.number}"
puts breakline

caja_fuerte = Box.new(5, 5, 5, 'gray', 'steel', true)

puts 'Caja Fuerte'
puts caja_fuerte.material
puts caja_fuerte.color
puts caja_fuerte.cover
puts caja_fuerte.height
puts caja_fuerte.width
puts "Volume: #{caja_fuerte.volume}"
puts "Area: #{caja_fuerte.print_area}"
puts "Cambiando altura y ancho:"
puts "Number: #{caja_fuerte.number}"
puts caja_fuerte.to_s
pp caja_fuerte
print 'Altura: '
caja_fuerte.set_height = gets.chomp.to_i
print 'Ancho: '
caja_fuerte.set_width = gets.chomp.to_i

print 'Altura: '
caja_fuerte.height = gets.chomp.to_i
print 'Ancho: '
caja_fuerte.width = gets.chomp.to_i


puts caja_fuerte.height
puts caja_fuerte.width
puts breakline

caja_de_regalo = Box.new(5, 5, 5, 'red', 'paper', false)

puts 'Caja de regalo'
puts caja_de_regalo.height
puts caja_de_regalo.width
puts caja_de_regalo.length
puts caja_de_regalo.color
puts caja_de_regalo.material
puts caja_de_regalo.cover
puts "Volume: #{caja_de_regalo.volume}"
puts "Area: #{caja_de_regalo.print_area}"
puts "Number: #{caja_de_regalo.number}"
puts breakline

puts Box.number_of_boxes


