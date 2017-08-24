class MenusController < ApplicationController
<<<<<<< HEAD

	def index
		@explore_recipes = RecipePreference.get_random_recipes(30)
		render 'index.html.erb'
	end

	def show

		algo_recipes = RecipePreference.get_algo_recipes(5)
		@weekly_menu = algo_recipes.first[1]
		render 'show.html.erb'
	end

	def test
		@recipe_card = Nokogiri::HTML(open("https://spoonacular.com/gluten-free-blue-cornbread-525968"))
		render 'test.html.erb'
	end
=======
	def show
		@weekly_menu = RecipePreference.get_weekly_menu
		
		render 'show.html.erb'
	end
>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244
end
