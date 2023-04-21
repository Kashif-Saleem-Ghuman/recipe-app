require 'rails_helper'

RSpec.describe 'Recipe show', type: :feature do
  before :each do
    # create a user
    user = User.create(email: 'alice@gmail.com', password: '123456', confirmed_at: Time.now)
    # log in with the user
    login_as user
    # visit the recipe path
    visit recipe_path(1)
  end

  it 'Displays the name of the Recipe' do
    expect(page).to have_content('Stuffed Chicken Breast')
  end

  it 'Displays the preparation time' do
    expect(page).to have_content('Preperation Time: 1h')
  end

  it 'Displays the cooking time' do
    expect(page).to have_content('Cooking Time: 1h')
  end

  it 'Displays the description' do
    expect(page).to have_content('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.')
  end

  it 'Displays the ingredients' do
    Recipe.find_by_id(1).foods.each { |f| expect(page).to have_content(f.name) }
  end
end
