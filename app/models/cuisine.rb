class Cuisine < ApplicationRecord
<<<<<<< HEAD
	has_many :liked_cuisines
	has_many :users, through: :liked_cuisine
=======
	# has_many :users, through: :taste_preference
>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244
end
