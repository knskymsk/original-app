class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :allergy_id, :photo_cooking, :ingredients, :procedure, :shelf_life, :freezable_id, :word, :image).merge(user_id: current_user.id)
  end

end
