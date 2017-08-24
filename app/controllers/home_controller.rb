class HomeController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index]
	
<<<<<<< HEAD

	def index
		feat_recipes = RecipePreference.get_random_recipes(8).body
		rand_recipes = RecipePreference.get_random_recipes(4).body
		@feat_recipes = feat_recipes.first[1]
		@rand_recipes = rand_recipes.first[1]

		
=======
	def index
>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244
		render "index.html.erb"
	end

	def show
		# search_query = params["query"]
		# results = Unirest.get("https://api.edamam.com/search?q=#{search_query}&app_id=46e7a65b&app_key=bbede61d833ab7c3528fb9ab34d45b92")

		# p "*" * 50
		# p results
		# p search_query
		# p "*" * 50
		
		# render "show.html.erb"
	end
<<<<<<< HEAD
end
=======
end
>>>>>>> 1dce82bdf31afcdec195be5fd5974dc529ede244
