# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Sizes
sizes = Size.create([
  { name: 'Small' },
  { name: 'Medium' },
  { name: 'Large' },
  # Add more sizes as needed
])

# Colors
colors = Color.create([
  { name: 'Red', code: '#FF0000' },
  { name: 'Blue', code: '#0000FF' },
  { name: 'Green', code: '#00FF00' },
  # Add more colors as needed
])

# Categories
categories = Category.create([
  { name: 'Abaya' },
  { name: 'T-Shirt' },
  { name: 'Long Dress' },
  { name: 'Short Dress' },
  { name: 'Pant' },
  # Add more categories as needed
])

# Products
products = Product.create([
  { name: 'Abaya 1', price: '49.99', like_count: 0, category: categories[0], description: 'Description for Abaya 1', deleted: false },
  { name: 'T-Shirt 1', price: '19.99', like_count: 0, category: categories[1], description: 'Description for T-Shirt 1', deleted: false },
  { name: 'Long Dress 1', price: '59.99', like_count: 0, category: categories[2], description: 'Description for Long Dress 1', deleted: false },
  { name: 'Short Dress 1', price: '39.99', like_count: 0, category: categories[3], description: 'Description for Short Dress 1', deleted: false },
  { name: 'Pant 1', price: '34.99', like_count: 0, category: categories[4], description: 'Description for Pant 1', deleted: false },
  # Add more products for each category as needed
])

# Add more seed data if required for other models

puts 'Seed data created successfully!'


# Stocks
stocks = Stock.create([
  { quantity: 50, size: sizes[0], color: colors[0], product: products[0] },
  { quantity: 30, size: sizes[1], color: colors[1], product: products[1] },
  { quantity: 20, size: sizes[2], color: colors[2], product: products[2] },
  # Add more stocks as needed
])

# Images
images = Image.create([
  { name: 'Abaya 1 Image', product: products[0], default: true, color: colors[0] },
  { name: 'T-Shirt 1 Image', product: products[1], default: true, color: colors[1] },
  { name: 'Long Dress 1 Image', product: products[2], default: true, color: colors[2] },
  # Add more images as needed
])


puts 'Seed data created successfully!'
