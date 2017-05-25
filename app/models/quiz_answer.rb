class QuizAnswer < ApplicationRecord
	belongs_to :user
	belongs_to :liked_recipe
end
