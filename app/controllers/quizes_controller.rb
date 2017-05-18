class QuizesController < ApplicationController
	def new
		@quiz_recipes = RecipePreference.get_weekly_menu
		@cb_counter = 1
		render "new.html.erb"
	end

	def create
		params[:liked_recipes].each do |recipe|
			new_recipe = LikedRecipe.new(
					recipe_id: recipe,
				)
			if new_recipe.save
				recipe_join = TastePreference.new(
					user_id: current_user.id,
					cuisine_id: new_recipe.id
				)
				p recipe_join.errors
			else
				p new_recipe.errors
			end
		end
		redirect_to '/mydashboard'
	end

end
