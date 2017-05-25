class UserDietSetting < ApplicationRecord
	belongs_to :user
	belongs_to :diet_restriction
end
