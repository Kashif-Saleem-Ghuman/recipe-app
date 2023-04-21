class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods
  has_many :inventory_foods
  has_many :recipes, through: :recipe_foods

  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
