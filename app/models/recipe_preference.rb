class RecipePreference < ApplicationRecord
	def self.get_weekly_menu
		cuisines = ["chinese", "mexican", "italian", "japanese", "sushi", "greek", "french", "cajun", "thai", "spanish", "indian", "mediterranean"]

		weekly_menu_responses = []
		p cuisines[-1]
		2.times do
			weekly_menu_responses << Unirest.get("https://api.edamam.com/search?q=#{cuisines.pop}&app_id=46e7a65b&app_key=bbede61d833ab7c3528fb9ab34d45b92").body
		end
		weekly_menu_responses
		return weekly_menu_responses
	end
end
