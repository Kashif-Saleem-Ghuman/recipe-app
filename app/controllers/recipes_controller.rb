class RecipesController < ApplicationController
  load_and_authorize_resource
  def index
    @current_user = current_user
    @recipes = current_user.recipes
  end

  def show
    @current_user = current_user
    @recipe = Recipe.find_by_id(params[:id])
    @ingredients = @recipe&.recipe_foods
  end

  def new
    @recipe = Recipe.new
    @current_user = current_user
  end

  def create
    @current_user = current_user
    @recipe = Recipe.new(recipe_params.merge(user_id: @current_user.id))

    if @recipe.save
      redirect_to recipes_path notice: 'Recipe created successfully 👏🏻'
    else
      flash[:alert] = 'Recipe not created'
      redirect_to recipes_path
    end
  end

  def public_recipes
    @current_user = current_user
    @recipes = Recipe.where(public: true).order(created_at: :desc)
  end

  def destroy
    @recipe = Recipe.find_by_id(params[:id])
    redirect_to recipes_path if @recipe.destroy
  end

  def toggle_public
    @recipe = Recipe.find_by_id(params[:recipe_id])
    @recipe.public = !@recipe.public

    redirect_to recipe_path(@recipe.id), notice: 'Recipe updated successfully 👏🏻' if @recipe.save
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :preparation_time, :cooking_time, :public)
  end
end
