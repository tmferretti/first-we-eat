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
		weekly_menu = menu_json['recipes']
		return weekly_menu
	end
end
