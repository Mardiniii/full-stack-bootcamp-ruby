# Make It Real Store

# Hashes y funciones

# Menu
# Ver el stock total (mostrar todos los campos del producto)
# Ver información del producto
# Suma del precio de todos los productos de la tienda
# Hallar el precio promedio de todos los productos de la tienda reutilizando la función que suma todos los precios
# Agregar un nuevo producto
# Salir

# Condiciones
# Producto: Nombre, Marca, Precio, Cantidad, Referencia
# Al momento de comenzar el programa deben haber por lo menos 3 productos en el store
# Una vez ejecute una opción debo volver al menú
# Debe existir una opción para salir del programa

# Print all the products in the stock
def print_product(product, index)
  puts """Product #{index +1}
    Name: #{product[:name]}
    Brand: #{product[:brand]}
    Price: #{product[:price]}
    Quantity: #{product[:quantity]}
    Reference: #{product[:reference]}
  """
end

def show_total_stock(products)
  products.each_with_index do |product, index|
    print_product(product, index)
  end
end

# Sum all the product prices and return its value
def sum_all_the_prices(products)
  sum = 0
  products.each do |product|
    sum = sum + ( product[:price] * product[:quantity])
  end
  sum
end

# Sum all the product prices and return its value
def sum_all_the_articles(products)
  sum = 0
  products.each do |product|
    sum = sum + product[:quantity]
  end
  sum
end

# Search a product with the reference's argument. If it exist returns product's index if not false
def search_product(products, reference)
  product_position = false
  products.each_with_index do |product, index|
    if product[:reference] == reference
      product_position = index
    end
  end
  product_position
end

# Add a new product
def add_product(products, new_product)
  products.push(new_product)
end

def breakline
  puts "\n"
end

def prompt
  print '> '
end

def read_stock_from_file(products, txt)
  txt.each_line do |line|
    product = line.split(',')
    name = product[0]
    brand = product[1]
    price = product[2].to_i
    quantity = product[3].to_i
    reference = product[4]

    product_hash = { name: name, brand: brand, price: price, quantity: quantity, reference: reference }

    products.push(product_hash)
  end
end

filename = 'products.txt'
txt = open(filename)

products = [ ]

read_stock_from_file(products, txt)

option = 0
while option != 6
  puts """
    Bienvenido a Make It Real Store

    1. Total stock
    2. Show product
    3. Get inventory amount $$$
    4. Average price
    5. Add product
    6. Exit
  """
  prompt
  option = gets.chomp.to_i
  case option
  when 1
    # Call show total stock function
    show_total_stock(products)
  when 2
    puts 'Enter product reference'
    reference = gets.chomp
    # Call search product function
    product_position = search_product(products, reference)
    if product_position.is_a? Fixnum
      # Call print product
      print_product(products[product_position], product_position)
    else
      breakline
      puts "Product not found!"
    end
  when 3
    # Call sum all the prices function
    sum_prices = sum_all_the_prices(products)
    breakline
    puts "The sum of the prices is: #{sum_prices}"
  when 4
    # Call sum all the prices function
    sum_prices = sum_all_the_prices(products)
    sum_articles = sum_all_the_articles(products)
    breakline
    puts "The average price is: #{sum_prices / sum_articles}"
  when 5
    # Get product info from the user
    puts "Name: "
    name = gets.chomp
    puts 'Brand: '
    brand = gets.chomp
    puts 'Price: '
    price = gets.chomp.to_i
    puts 'Quantity: '
    quantity = gets.chomp.to_i
    puts 'Reference: '
    reference = gets.chomp

    # Create
    new_product = { name: name, brand: brand, price: price, quantity: quantity, reference: reference }
    add_product(products, new_product)
    print_product(products.last, products.size - 1)
    puts 'The product has been created succesfully'
  when 6
    puts "Bye bye user!"
  else
    puts "Por favor escoja una opción correcta"
  end
end