class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  private

  def recipe_params
    params.require(:recipe).permit(:photo_cooking, :procedure, :image).merge(user_id: current_user.id)
  end

end
