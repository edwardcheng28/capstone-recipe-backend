# class RecipesController < ApplicationController
#   def index
#     response = HTTP.get("https://api.spoonacular.com/recipes/findByIngredients?apiKey=#{ENV["INGREDIENT_TO_RECIPE_API_KEY"]}&ingredient=#{searchTerm}")
#     data = JSON.parse(response.body)
#     render json: data
#   end

#   def show
#     response_recipe_info = HTTP.get("https://api.spoonacular.com/recipes/#{"The ID of the Recipe"}/information?apiKey=#{ENV["INGREDIENT_TO_RECIPE_API_KEY"]}")
#     response_recipe_steps = HTTP.get("https://api.spoonacular.com/recipes/#{"The ID of the Recipe"}/analyzedInstructions?apiKey=#{ENV["INGREDIENT_TO_RECIPE_API_KEY"]}")
#     data = JSON.parse(response_recipe_info.body) + JSON.parse(response_recipe_steps.body)
#     render json: data
#   end
# end
