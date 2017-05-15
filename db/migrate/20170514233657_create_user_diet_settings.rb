class CreateUserDietSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :user_diet_settings do |t|
      t.integer :user_id
      t.integer :diet_id

      t.timestamps
    end
  end
end
