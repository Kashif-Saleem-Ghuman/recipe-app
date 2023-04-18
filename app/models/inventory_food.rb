class InventoryFood < ApplicationRecord
  belongs_to :inventorie, class_name: 'Inventorie', foreign_key: 'inventorie_id'
  belongs_to :food, class_name: 'Food', foreign_key: 'food_id'
end
