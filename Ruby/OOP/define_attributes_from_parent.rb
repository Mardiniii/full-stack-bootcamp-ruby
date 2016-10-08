class Human
  attr_accessor :name, :age, :citizenship
end

class Writer < Human
  def biography
    puts "My biography is...."
  end
end

gabo = Writer.new
gabo.name = 'Gabriel Garcia Marquez'
gabo.age = 80
gabo.citizenship = 'Colombian'

puts gabo.name
puts gabo.age
puts gabo.citizenship