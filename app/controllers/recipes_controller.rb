class RecipesController < ApplicationController
  def index
    p ENV["INGREDIENT_TO_RECIPE_API_KEY"]
    response = HTTP.get("https://api.spoonacular.com/recipes/findByIngredients?apiKey=#{ENV["INGREDIENT_TO_RECIPE_API_KEY"]}&ingredients=#{params["searchTerm"]}")
    data = JSON.parse(response.body)
    render json: data
  end

  def show
    response_recipe_info = HTTP.get("https://api.spoonacular.com/recipes/#{params["id"]}/information?apiKey=#{ENV["INGREDIENT_TO_RECIPE_API_KEY"]}")

    response_recipe_steps = HTTP.get("https://api.spoonacular.com/recipes/#{params["id"]}/analyzedInstructions?apiKey=#{ENV["INGREDIENT_TO_RECIPE_API_KEY"]}")
    info_data = JSON.parse(response_recipe_info.body)
    steps_data = JSON.parse(response_recipe_steps.body)
    render json: { info: info_data, steps: steps_data }
  end
end
