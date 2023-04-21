require 'rails_helper'

RSpec.describe 'Public Recipes', type: :feature do
  before :each do
    visit public_recipes_path
  end

  it 'Displays the name of the Recipe' do
    expect(page).to have_content('Kung Pao Chicken')
  end

  it 'Displays the author of the recipe' do
    expect(page).to have_content('By: ALice')
  end

  it 'Displays the total items' do
    expect(page).to have_content('Total food items: 2')
  end

  it 'Displays the total price' do
    expect(page).to have_content('Total price: 16 $')
  end
end
