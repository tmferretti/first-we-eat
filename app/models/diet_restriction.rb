class DietRestriction < ApplicationRecord
	has_many :users, through: :user_diet_setting
	has_many :user_diet_settings
end
