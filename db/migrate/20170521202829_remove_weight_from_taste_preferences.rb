class RemoveWeightFromTastePreferences < ActiveRecord::Migration[5.0]
  def change
    remove_column :taste_preferences, :weight, :integer
    remove_column :taste_preferences, :cuisine_id, :integer
    add_column :taste_preferences, :liked_recipe_id, :integer
  end
end
