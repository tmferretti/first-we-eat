class CreateLikedRecipeUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :liked_recipe_users do |t|
      t.references :liked_recipe, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
