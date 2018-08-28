class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find_by_id(params[:id])
  end



  def update
    @recipe = Recipe.find_by_id(params[:id])

    @recipe.update(recipe_params)
    @recipe.save
    redirect_to recipe_path(@recipe)
  end



  def create
    @recipe = Recipe.create(recipe_params)
    binding.pry
    params[:recipe][:ingredients].each do |ingredient_id|
      if ingredient_id.present?
        @recipe.recipe_ingredients.build(ingredient_id)
      end

    end


    redirect_to recipe_path(@recipe)
  end

  def show

    @recipe = Recipe.find_by_id(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name,:ingredients)
  end


end
