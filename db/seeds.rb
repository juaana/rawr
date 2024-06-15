
Product.destroy_all

products = [
  { title: 'Producto 1', description: 'Descripción del Producto 1', price: 19.99 },
  { title: 'Producto 2', description: 'Descripción del Producto 2', price: 29.99 },
  { title: 'Producto 3', description: 'Descripción del Producto 3', price: 39.99 },
  { title: 'Producto 4', description: 'Descripción del Producto 4', price: 49.99 },
  { title: 'Producto 5', description: 'Descripción del Producto 5', price: 59.99 },
  { title: 'Producto 6', description: 'Descripción del Producto 5', price: 59.99 }
]

products.each do |product|
  Product.create(product)
end

puts "Se han creado #{Product.count} productos"
