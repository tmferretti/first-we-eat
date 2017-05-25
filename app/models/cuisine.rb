class Cuisine < ApplicationRecord
	has_many :liked_cuisines
	has_many :users, through: :liked_cuisine
end
