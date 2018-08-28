class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def edit
    @ingredient = Ingredient.find_by_id(params[:id])
  end

  def create


    @ingredient = Ingredient.create(:name => params[:name])
    redirect_to ingredient_path(@ingredient)
  end

  def show
    @ingredient = Ingredient.find_by_id(params[:id])
  end
end
