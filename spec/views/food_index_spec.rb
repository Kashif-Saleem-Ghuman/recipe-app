require 'rails_helper'

RSpec.describe 'Food Index', type: :feature do
  before :each do
    user = User.create!(
      name: 'Tom',
      email: 'tom@example.com',
      password: '123456',
      confirmed_at: Time.now
    )

    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    visit foods_path
  end

  describe 'index page for list foods' do
    it 'shows name of food of the logged-in user.' do
      expect(page).to have_content('Food')
    end

    it 'shows the measurement unit column there' do
      expect(page).to have_content('Measurement Unit')
    end

    it 'shows the price column there' do
      expect(page).to have_content('Price')
    end

    it 'shows the button add food' do
      expect(page).to have_content('Add food')
    end

    it 'shows the actions column' do
      expect(page).to have_content('Actions')
    end
  end
end
