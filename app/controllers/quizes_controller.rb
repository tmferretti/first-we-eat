class QuizesController < ApplicationController
	def new
		quiz_recipes = RecipePreference.get_random_recipes(32).body
		@quiz_recipes = quiz_recipes['recipes']
		ap @quiz_recipes
		render "new.html.erb"
	end

	def create
		params[:liked_recipes].each do |recipe|
			new_recipe = LikedRecipe.new(
					recipe_id: recipe,
				)
			if new_recipe.save
				recipe_join = QuizAnswer.new(
					user_id: current_user.id,
					liked_recipe_id: new_recipe.id
				)
				if recipe_join.save
					p "success"
				else
					p recipe_join.errors
				end
			else
				p new_recipe.errors
			end
		end
		redirect_to '/'
	end
	
end
