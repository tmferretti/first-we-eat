class LikedRecipe < ApplicationRecord
<<<<<<< HEAD
	has_many :users, through: :quiz_answers
	has_many :quiz_answers
=======
	has_many :users, through: :taste_preference
>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244
end
