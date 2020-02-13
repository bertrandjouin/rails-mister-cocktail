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

gin = Cocktail.create!(name: "Gin To")
sunrise = Cocktail.create!(name: "Tequila Sunrise")
caipirina = Cocktail.create!(name: "caipirina")
tomcollins = Cocktail.create!(name: "tom collins")

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create!(name: "ice")
menthole = Ingredient.create!(name: "menthol")
salt = Ingredient.create!(name: "salt")
tequila = Ingredient.create!(name: "Tequila")
sucredecanne = Ingredient.create!(name: "sucre de canne")
gin = Ingredient.create!(name: "gin")

Dose.create!(description: "12cl", cocktail_id: gin.id, ingredient_id: lemon.id)
Dose.create!(description: "9cl", cocktail_id: sunrise.id, ingredient_id: tequila.id)
Dose.create!(description: "9cl", cocktail_id: tomcollins.id, ingredient_id: gin.id)
puts "Finished!"
