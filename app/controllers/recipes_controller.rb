class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    # binding.pry
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    if @recipe && @recipe.user_id == current_user.id
      @recipe.destroy
      redirect_to root_path
      return
    else
      redirect_to root_path
    end
  end


  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :allergy_id, :ingredients, :procedure, :shelf_life, :freezable_id, :word, :image, :cooking_time).merge(user_id: current_user.id)
  end

end
