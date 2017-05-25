class CreateLikedCuisines < ActiveRecord::Migration[5.0]
  def change
    create_table :liked_cuisines do |t|
      t.integer :cuisine_id
      t.integer :user_id
      t.decimal :weight

      t.timestamps
    end
  end
end
