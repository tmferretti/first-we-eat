class User < ApplicationRecord
  has_many :user_diet_settings
  has_many :diet_restrictions, through: :user_diet_setting
  has_many :quiz_answers
  has_many :liked_recipes, through: :quiz_answers
  has_many :liked_cuisines
  has_many :cuisines, through: :liked_cuisines
  
  # Default Devise modules
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

end
