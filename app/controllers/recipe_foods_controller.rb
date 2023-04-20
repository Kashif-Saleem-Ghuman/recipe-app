class RecipeFoodsController < ApplicationController
  def new
    @current_user = current_user
    @recipe = Recipe.find(params[:recipe_id])
    @available_foods = current_user.foods.reject { |food| @recipe.foods.include?(food) }
    @ingredient = RecipeFood.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = RecipeFood.new(recipe_food_params.merge(recipe_id: @recipe.id))

    if @recipe_food.save
      redirect_to recipe_path(@recipe.id)
    else
      render :new
    end
  end

  def destroy
    @recipe_food = RecipeFood.find(params[:id])
    if @recipe_food.destroy
      flash[:notice] = 'Ingredient deleted'
    else
      flash[:alert] = 'Ingredient not deleted'
    end
    redirect_to recipe_path(params[:recipe_id])
  end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:food_id, :quantity)
  end
end
