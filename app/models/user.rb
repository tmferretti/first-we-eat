class User < ApplicationRecord
  has_many :liked_recipes, through: :taste_preference
  has_many :diet_restrictions, through: :user_diet
  
  # Default Devise modules
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

end
