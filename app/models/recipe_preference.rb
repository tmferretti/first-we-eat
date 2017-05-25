class RecipePreference < ApplicationRecord
	def self.get_weekly_menu
		# cuisines = ["chinese", "mexican", "italian", "japanese", "sushi", "greek", "french", "cajun", "thai", "spanish", "indian", "mediterranean"]

		# weekly_menu_responses = []
		# p cuisines[-1]
		# 3.times do
		# 	weekly_menu_responses << Unirest.get("https://api.edamam.com/search?q=#{cuisines.shuffle.pop}&app_id=46e7a65b&app_key=bbede61d833ab7c3528fb9ab34d45b92&from=0&to=1&health=alcohol-free").body
		# end

		menu_data = SpoonacularDev.first['data']
		menu_json = JSON.parse menu_data.gsub('=>', ':')
		p menu_json
		weekly_menu = menu_json['recipes']
		p weekly_menu
		# selected_recipes = []
		# similar_ids = []
		# weekly_menu = []
		# current_user.liked_recipes.sample(5).each do |object|
		# 	selected_recipes << RecipePreference.get_related_recipes(object.recipe_id).body
		# end

		# selected_recipes.each do |related_recipe_master|
		# 	related_recipe_master.each do |similar_response_object|
		# 		similar_response_object.each do |recipe|
		# 			similar_ids << recipe['id']
		# 			similar_ids.each do |id|
		# 				weekly_menu << RecipePreference.get_recipe_information(id)
		# 			end
		# 		end
		# 	end
		# end

		return weekly_menu
	end

	def self.get_recipe_information(recipe_id)
		response = Unirest.get "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/#{recipe_id}/information",
		  headers:{
		    "X-Mashape-Key" => "mjujTXvEe0mshWJmTGHz9riuUeIRp1CtxpRjsnnvhfdmxs5G41",
		    "Accept" => "application/json"
		  }

		response = response.body
		return response
	end

	def self.get_related_recipes(recipe_id)
		response = Unirest.get "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/#{recipe_id}/similar",
			headers:{
			    "X-Mashape-Key" => "mjujTXvEe0mshWJmTGHz9riuUeIRp1CtxpRjsnnvhfdmxs5G41",
			    "Accept" => "application/json"
			}
		return response
	end

	def self.get_algo_recipes(num)
		response = Unirest.get "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/random?limitLicense=false&number=#{num}",
		  headers:{
		    "X-Mashape-Key" => "mjujTXvEe0mshWJmTGHz9riuUeIRp1CtxpRjsnnvhfdmxs5G41",
		    "Accept" => "application/json"
		  }
		response = response.body
		return response
	end
	

	def self.get_random_videos
		response = Unirest.get "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/food/videos/random",
		  headers:{
		    "X-Mashape-Key" => "mjujTXvEe0mshWJmTGHz9riuUeIRp1CtxpRjsnnvhfdmxs5G41",
		    "Accept" => "application/json"
		  }

		return response
	end

	def self.get_random_recipes(num)
		response = Unirest.get "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/recipes/random?limitLicense=false&number=#{num}",
		  headers:{
		    "X-Mashape-Key" => "mjujTXvEe0mshWJmTGHz9riuUeIRp1CtxpRjsnnvhfdmxs5G41",
		    "Accept" => "application/json"
		  }
		
		return response
	end


end
