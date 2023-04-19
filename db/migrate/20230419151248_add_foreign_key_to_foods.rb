class AddForeignKeyToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :user_id, :integer
    add_foreign_key :foods, :users
  end
end
