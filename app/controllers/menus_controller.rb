class MenusController < ApplicationController
	def show
		@weekly_menu = RecipePreference.get_weekly_menu
		render 'show.html.erb'
	end
end
