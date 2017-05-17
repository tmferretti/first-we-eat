class CreateSpoonacularDevs < ActiveRecord::Migration[5.0]
  def change
    create_table :spoonacular_devs do |t|
      t.text :data

      t.timestamps
    end
  end
end
