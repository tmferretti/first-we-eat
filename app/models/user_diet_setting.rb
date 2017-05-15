class UserDietSetting < ApplicationRecord
	belongs_to :user
	belongs_to :user_diet_setting
end
