class LikedRecipe < ApplicationRecord
	has_many :users, through: :taste_preference
end
