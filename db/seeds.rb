# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all
puts "Creating categories..."

gin = Cocktail.create!(name: "Gin Tonic")
sunrise = Cocktail.create!(name: "Tequila Sunrise")
caipirina = Cocktail.create!(name: "Caipirina")
tomcollins = Cocktail.create!(name: "Tom Collins")

lemon = Ingredient.create(name: "Lemon")
ice = Ingredient.create!(name: "Ice")
mint = Ingredient.create!(name: "Mint")
salt = Ingredient.create!(name: "Salt")
tequila = Ingredient.create!(name: "Tequila")
sucredecanne = Ingredient.create!(name: "Cane sugar")
gin = Ingredient.create!(name: "Gin")
rum = Ingredient.create!(name: "Rum")
orangejuice = Ingredient.create!(name: "Orange juice")
cointreau = Ingredient.create!(name: "Cointreau")
perrier = Ingredient.create!(name: "Perrier")
tonic = Ingredient.create!(name: "Tonic")

Dose.create!(description: "3cl", cocktail_id: tomcollins.id, ingredient_id: lemon.id)
Dose.create!(description: "9cl", cocktail_id: tomcollins.id, ingredient_id: gin.id)
Dose.create!(description: "1cl", cocktail_id: tomcollins.id, ingredient_id: sucredecanne.id)
puts "Finished!"
