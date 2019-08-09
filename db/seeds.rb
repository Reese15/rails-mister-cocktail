# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "Gin")
# Ingredient.create(name: "Rum")

# Ingredient.create(name:

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = open(url).read
ingredients_array = JSON.parse(ingredients)['drinks']

ingredients_array.each do |ingredient|
# puts ingredient['strIngredient1']
Ingredient.create(name: ingredient['strIngredient1'])
end
