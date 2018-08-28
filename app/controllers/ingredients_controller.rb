class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def edit
    @ingredient = Ingredient.find_by_id(params[:id])
  end

  def create
    binding.pry

    @ingredient = Ingredient.create(:name => params[:name])
    redirect_to Ingredient_path(@ingredient)
  end
end
