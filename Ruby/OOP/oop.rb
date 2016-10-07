class Transaction
  attr_accessor :user, :date, :concept, :amount
end

class Invoice < Transaction
  attr_accessor :number
end

class Income < Transaction
end

class Expense < Transaction
end

class Humano
  attr_accessor :name, :age, :genre

  def initialize(name, age, genre)
    @name = name
    @age = age
    @genre = genre
  end

  def greet
    "Hola, me llamo #{@name}"
  end
end

invoice = Invoice.new
invoice.user = 'Juan Alberto'
invoice.amount = 35_000
invoice.number = 1

puts invoice.user
puts invoice.amount
puts invoice.number

juan = Humano.new("Juan Alberto", 25, "Masculino")

# juan.name = "Juan Alberto"
# juan.age = 25
# juan.genre = "Masculino"

puts juan.name
puts juan.age
puts juan.genre
puts juan.greet