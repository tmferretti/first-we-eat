class DietRestriction < ApplicationRecord
	has_many :users, through: :user_diet_setting
end
