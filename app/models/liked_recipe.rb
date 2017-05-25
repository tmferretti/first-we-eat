class LikedRecipe < ApplicationRecord
	has_many :users, through: :quiz_answers
	has_many :quiz_answers
end
