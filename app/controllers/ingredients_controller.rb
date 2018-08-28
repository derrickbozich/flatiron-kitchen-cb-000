class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def update
    @ingredient = Ingredient.find_by_id(params[:id])

    @ingredient.update(:name => params[:ingredient][:name])
    @ingredient.save
  end



  def create
    @ingredient = Ingredient.create(ingredient_params)
    redirect_to @ingredient
  end

  def show
    binding.pry
    @ingredient = Ingredient.find_by_id(params[:id])
  end

  def edit
    @ingredient = Ingredient.find_by_id(params[:id])
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
