require 'elibom'

Elibom.configure(
  :user => 'german.escobar@elibom.com',
  :api_password => 'DqDvw745wc'
)

puts "Sending SMS messages.."

response = Elibom.send_message(
  :to => '3012623573, 3132240575, 3003729001, 3216929417, 3132970404, 3006725359, 3148112185, 3043969696, 3042919162, 3187127642, 3117298605, 3002499179, 3116563135',
  :text => "Hola Makers y Mauro, soy Sebas, los saludo via SMS a traves del API de Elibom. Feliz Sabado!"
)

puts "The work is done.."