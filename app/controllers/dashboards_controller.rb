class DashboardsController < ApplicationController
	def index
		# @weekly_menu = RecipePreference.get_weekly_menu[0]["hits"]

		render "index.html.erb"
	end
end
