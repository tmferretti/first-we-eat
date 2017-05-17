class HomeController < ApplicationController
	before_filter :authenticate_user!
	
	def index
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
end
