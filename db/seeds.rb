require "faker"

100.times do
  product = Product.new(
    title: Faker::FunnyName.name,
    description: Faker::Quotes::Chiquito.joke,
    price: Faker::Number.decimal(l_digits: 3, r_digits: 3)
  )
  product.save                       
  end

puts "Se han creado #{Product.count} productos"
