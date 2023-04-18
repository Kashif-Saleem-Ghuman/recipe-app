class User < ApplicationRecord
  has_many :recipes
  has_many :inventories

  validates :name, presence: true 
end
