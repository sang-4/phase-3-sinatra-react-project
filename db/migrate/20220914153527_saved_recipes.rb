class SavedRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :saved_recipes do |t|
      t.string :name
      t.string :ingredients
      t.string :instructions
      t.integer :cooking_duration
      t.string :serving_preference
    end
  end
end
