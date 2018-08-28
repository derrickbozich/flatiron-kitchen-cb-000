class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find_by_id(params[:id])
  end



  def update
    @recipe = Recipe.find_by_id(params[:id])

    @recipe.update(:name => params[:recipe][:name])
    @recipe.save
  end



  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def show
    binding.pry
    @recipe = Recipe.find_by_id(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name)
  end


end
