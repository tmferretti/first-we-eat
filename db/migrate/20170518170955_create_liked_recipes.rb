class CreateLikedRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :liked_recipes do |t|
      t.integer :recipe_id

      t.timestamps
    end
  end
end
