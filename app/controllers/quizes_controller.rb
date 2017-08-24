class QuizesController < ApplicationController
	def new
<<<<<<< HEAD
		quiz_recipes = RecipePreference.get_random_recipes(32).body
		@quiz_recipes = quiz_recipes['recipes']
		ap @quiz_recipes
=======
		@quiz_recipes = RecipePreference.get_weekly_menu
		@cb_counter = 1
>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244
		render "new.html.erb"
	end

	def create
		params[:liked_recipes].each do |recipe|
			new_recipe = LikedRecipe.new(
					recipe_id: recipe,
				)
			if new_recipe.save
<<<<<<< HEAD
				recipe_join = QuizAnswer.new(
					user_id: current_user.id,
					liked_recipe_id: new_recipe.id
				)
				if recipe_join.save
					p "success"
				else
					p recipe_join.errors
				end
=======
				recipe_join = TastePreference.new(
					user_id: current_user.id,
					cuisine_id: new_recipe.id
				)
				p recipe_join.errors
				recipe_join.save
>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244
			else
				p new_recipe.errors
			end
		end
<<<<<<< HEAD
		redirect_to '/'
	end
	
=======
		redirect_to '/mydashboard'
	end

>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244
end
