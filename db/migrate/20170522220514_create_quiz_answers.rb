class CreateQuizAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :quiz_answers do |t|
      t.integer :liked_recipe_id
      t.integer :user_id

      t.timestamps
    end
  end
end
