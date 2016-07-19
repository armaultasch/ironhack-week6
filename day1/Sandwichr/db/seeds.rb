# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


 ingredientA = Ingredient.create(name: "cheese", calories: 150)
 ingredientB  = Ingredient.create(name: "tomato", calories: 30)
 ingredientC = Ingredient.create(name: "lettuce", calories: 0)
 ingredientD = Ingredient.create(name: "tuna", calories: 300)


 sandwichA = Sandwich.create(name: "turkey", bread_type: "white")
 sandwichB = Sandwich.create(name: "pastrami", bread_type: "rye")
 sandwichC = Sandwich.create(name: "chicken salad", bread_type: "wheat")

 SandwichIngredient.create(sandwich_id: sandwichA.id, ingredient_id: ingredientB.id)
 SandwichIngredient.create(sandwich_id: sandwichB.id, ingredient_id: ingredientC.id)