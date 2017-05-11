class CreateRecipePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_preferences do |t|
      t.integer :user_id
      t.string :diet_restriction
      t.string :health_label

      t.timestamps
    end
  end
end
