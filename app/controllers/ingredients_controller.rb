class IngredientsController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show]

  def index
    @ingredients = Ingredient.all
    render :index
  end

  def create
    @ingredient = Ingredient.create(
      name: params[:name],
      image_url: params[:image_url],
    )
    render json: { message: "Product is sucessfully created." }
  end

  def show
    @ingredient = Ingredient.find_by(id: params[:id])
    render :show
  end
end
