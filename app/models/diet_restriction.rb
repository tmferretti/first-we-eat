class DietRestriction < ApplicationRecord
	has_many :users, through: :user_diet_setting
<<<<<<< HEAD
	has_many :user_diet_settings
=======
>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244
end
