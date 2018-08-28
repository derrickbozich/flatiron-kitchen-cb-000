class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def update

    @ingredient = Ingredient.find_by_id(params[:id])

    @ingredient.update(ingredient_params)
    @ingredient.save
    redirect_to ingredient_path(@ingredient)
  end



  def create
    binding.pry
    @ingredient = Ingredient.create(ingredient_params)
    redirect_to @ingredient
  end

  def show

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
