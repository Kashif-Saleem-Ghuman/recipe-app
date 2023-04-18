class CreateRecipeFood < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.integer :quantity
      t.references :recipe_id, foreign_key: { to_table: :recipes}
      t.references :food_id, foreign_key: { to_table: :foods}
      t.timestamps
    end
  end
end
