class User < ApplicationRecord
  has_many :recipes
  has_many :inventories
end
