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

	def restaurant_info
		@restaurant_info = Restaurant.find_by_id(params[:id])
	end

	def edit
		@restaurant = Restaurant.find_by_id(params[:id])
	end
	def update
		restaurant_change = Restaurant.find_by_id(params[:id])
		restaurant_change.name = params[:name]
		restaurant_change.cuisine = params[:cuisine]
		restaurant_change.save

		redirect_to "/restaurants"
	end
	def delete
		restaurant_delete = Restaurant.find_by_id(params[:id]).destroy
		redirect_to "/restaurants"
	end
end