breakline = "\n"

class Mammal

  def initialize
    puts "A new mammal is coming..."
  end

  def breathe
    puts "Inhale and exhale... UUhhhhh"
  end
end

little_mammal = Mammal.new
little_mammal.breathe
puts breakline

class Dog < Mammal
  def bark
    puts "Woof, Woof, ARFF!"
  end
end

doggy = Dog.new
doggy.bark
doggy.breathe
puts breakline

class Cat < Mammal
  def meow
    puts "Meow, meowwwwwww!"
  end
end

cat = Cat.new
cat.meow
cat.breathe
puts breakline