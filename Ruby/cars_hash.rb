car_1 = { brand: 'Mercedes', model: 2016, km: 1000 }
car_2 = { brand: 'Toyota', model: 2010, km: 100_000 }
car_3 = { brand: 'Renault', model: 2014, km: 200_000 }

cars_array = [ car_1, car_2, car_3 ]

# Access directly to an array hash element
puts cars_array[0][:brand]
puts cars_array[1][:brand]
puts cars_array[2][:brand]

# Iterate around the hash array
cars_array.each do |car|
  puts "Brand: #{car[:brand]} - Model: #{car[:model]} - Km: #{car[:km]}"
end
