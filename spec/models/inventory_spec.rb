require 'rails_helper'

RSpec.describe Inventory, type: :model do
  subject do
    @user = User.create!(name: 'Epaltechs', email: 'epal@mail.com', password: 'password', confirmed_at: Time.now)
    Inventory.new(name: 'My Inventory', description: 'My Inventory Description', user_id: @user.id)
  end

  before(:each) { subject.save }

  it 'should have name inventor' do
    expect(subject.name).to eq('My Inventory')
  end

  it 'should have description "This is description"' do
    expect(subject.description).to eql('My Inventory Description')
  end
end
