# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ingredient1 = Ingredient.create!(name: "chicken", image_url: "https://images.pexels.com/photos/6107734/pexels-photo-6107734.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")

ingredient2 = Ingredient.create!(name: "rice", image_url: "https://images.pexels.com/photos/4110251/pexels-photo-4110251.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")

ingredient3 = Ingredient.create!(name: "bok choy", image_url: "https://images.pexels.com/photos/7227069/pexels-photo-7227069.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")

user1 = User.create!(name: "Edward Cheng", email: "echeng@email.com", password: "password", image_url: "https://images.pexels.com/photos/3877832/pexels-photo-3877832.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")

PantryItem.create!(ingredient_id: ingredient1.id, user_id: user1.id, amount: 10.0)
PantryItem.create!(ingredient_id: ingredient2.id, user_id: user1.id, amount: 25.0)
PantryItem.create!(ingredient_id: ingredient3.id, user_id: user1.id, amount: 5.0)
