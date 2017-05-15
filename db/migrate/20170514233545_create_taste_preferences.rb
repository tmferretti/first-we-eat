class CreateTastePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :taste_preferences do |t|
      t.integer :user_id
      t.integer :cuisine_id
      t.integer :weight

      t.timestamps
    end
  end
end
