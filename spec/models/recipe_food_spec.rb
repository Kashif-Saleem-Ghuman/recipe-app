require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  before(:each) do
    @user = User.new(name: 'test', email: 'test@test.com')
    @recipe = @user.recipes.new(name: 'pizza', preparation_time: 2, cooking_time: 5,
                                description: 'Put the pizza in the oven for 20 mins', public: nil, user_id: @user.id)
    @food = @user.foods.new(name: 'pizza', measurement_unit: 'gramz', price: 20, user_id: @user.id)
    @recipefood = @recipe.recipe_foods.new(quantity: 2, food_id: @food.id, recipe_id: @recipe.id)
    @recipefood.food = @food
  end

  it 'should return the correct name of the food' do
    expect(@recipefood.food.name).to eq('pizza')
  end

  it 'should return the correct quantity of the food' do
    expect(@recipefood.quantity).to eq(2)
  end

  it 'should return the correct measurement unit of the food' do
    expect(@recipefood.food.measurement_unit).to eq('gramz')
  end

  it 'should return the correct price of the food' do
    expect(@recipefood.food.price).to eq('20')
  end

  it 'should return the correct recipe' do
    expect(@recipefood.recipe).to eq(@recipe)
  end
end
