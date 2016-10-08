breakline = "\n"

class Bird
  attr_reader :name

  def initialize(name)
    puts "#{name} is coming..."
    @name = name
  end

  def chirping
    puts "#{@name}'s song: Fiuuu, Fiuuuu, Fiuuuu!"
  end

  def relaxing
    puts "#{@name} is on the electric cable!"
  end

  def fly
    puts "#{@name} is flying through the skyyy!"
  end
end

piolin = Bird.new('Piolin')
piolin.chirping
piolin.relaxing
piolin.fly
puts breakline

class Penguin < Bird
  def initialize(name)
    puts "A new penguin from the north pole is coming..."
    super(name)
  end

  def fly
    puts "Sorry I'm a penguin. I can't fly"
  end
end

little_penguin = Penguin.new('Omar')
little_penguin.fly
puts little_penguin.instance_of?(Penguin)
