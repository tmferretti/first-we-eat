class CreateJoinTable < ActiveRecord::Migration[5.0]
  def change
  	create_join_table :liked_recipes, :users
  end
end
