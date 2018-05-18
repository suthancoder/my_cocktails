# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning DB"

Ingredient.destroy_all

Cocktail.destroy_all

Dose.destroy_all

Ingredient.create(name: "lemon")

firstI = Ingredient.create(name: "ice")

Ingredient.create(name: "mint leaves")

firstC = Cocktail.create(name: "Margarita")

Cocktail.create(name: "Margarita")

Cocktail.create(name: "Penicillin")

Cocktail.create(name: "Tipperary")

puts "Finished!"

my_dose = Dose.new(description: "Stir over ice. Strain into chilled glass. Cut a wide swath of orange peel, and express the orange oils over the drink. Discard orange twist.")
my_dose.cocktail = firstC
my_dose.ingredient = firstI
my_dose.save
