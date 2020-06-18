# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'CLEAR OUT!!!'


# Ingredient.destroy_all
# Ingredient.create!(name: "ice")
lemon = Ingredient.find_or_create_by(name: "lemon")
puts lemon
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "vodka")
Ingredient.create(name: "kahlua")
Ingredient.create(name: "milk")
Ingredient.create(name: "dark rum")
Ingredient.create(name: "white rum")
Ingredient.create(name: "lime juice")
Ingredient.create(name: "lemon juice")
Ingredient.create(name: "sugar water")
Ingredient.create(name: "whiskey")
Ingredient.create(name: "smokey whiskey")
Ingredient.create(name: "angustura bitters")
Ingredient.create(name: "gin")
Ingredient.create(name: "fresh fruit")
Ingredient.create(name: "Tequila")
Ingredient.create(name: "Mescal")
Ingredient.create(name: "Cachasa")
Ingredient.create(name: "triple sec")
Ingredient.create(name: "sweet vermouth")
Ingredient.create(name: "campari")
Ingredient.create(name: "orange bitter")
Ingredient.create(name: "brown sugar")
Ingredient.create(name: "white sugar")
# Ingredient.create(name: "")

puts 'I did it!!'

