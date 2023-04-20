class RenameColumnInTable < ActiveRecord::Migration[7.0]
  def change
    rename_column :recipe_foods, :qunatity, :quantity
  end
end
