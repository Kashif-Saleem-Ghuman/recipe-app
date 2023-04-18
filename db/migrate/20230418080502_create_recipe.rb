class CreateRecipe < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :pereperation_time
      t.string :cooking_time
      t.text :description
      t.boolean :public
      t.references :user, foreign_key: { to_table: :users}
      t.timestamps
    end
  end
end
