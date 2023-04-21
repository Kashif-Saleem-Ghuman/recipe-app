require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before(:each) do
    @user = User.new(name: 'Tom', email: 'tom@example.com', password: '123456')
    @recipe = @user.recipes.new(name: 'Recipe 1', preparation_time: 2, cooking_time: 3, description: 'lorem ipsum dolor sit amet',
                                public: true)
  end

  it 'should return the name of the recipe' do
    expect(@recipe.name).to eq('Recipe 1')
  end

  it 'should return the preparation time of the recipe' do
    expect(@recipe.preparation_time).to eq('2')
  end

  it 'should return the cooking time of the recipe' do
    expect(@recipe.cooking_time).to eq('3')
  end

  it 'should return the description of the recipe' do
    expect(@recipe.description).to eq('lorem ipsum dolor sit amet')
  end
end
