class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def update
    @ingredient = Ingredient.find_by_id(params[:id])
    binding.pry
    @ingredient.update(:name => params[:name])
  end



  def create
    @ingredient = Ingredient.create(:name => params[:name])
    redirect_to ingredient_path(@ingredient)
  end

  def show
    binding.pry
    @ingredient = Ingredient.find_by_id(params[:id])
  end

  def edit
    @ingredient = Ingredient.find_by_id(params[:id])
  end
end
