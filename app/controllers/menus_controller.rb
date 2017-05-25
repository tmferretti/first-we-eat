class MenusController < ApplicationController

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
end
