class DynamicController < ApplicationController
	def restaurants
		@recommended = Restaurant.all
	end

	def recommend
	end

	def create
		
		# new_recommedation = Restaurant.new
		# new_recommedation.cuisine = params[:cuisine]
		# new_recommedation.name = params[:name]

		new_recommedation = Restaurant.new(:name => params[:name], :cuisine => params[:cuisine])

		new_recommedation.save

		redirect_to "/restaurants"
	end


end