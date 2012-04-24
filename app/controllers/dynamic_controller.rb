class DynamicController < ApplicationController
	def restaurants
		@recommended = []
		
		@tij = Restaurant.new
		@tij.type = "mexican"
		@tij.name = "Tijauna Flats"
		@recommended << @tij

		@italian = Restaurant.new
		@italian.type = "italian"
		@italian.name = "Go Roma"
		@recommended << @italian
		
		@kebab = Restaurant.new
		@kebab.type = "kebab"
		@kebab.name = "Kebab House"
		@recommended << @kebab

		@thai = Restaurant.new
		@thai.type = "thai"
		@thai.name = "Suku Thai"
		@recommended << @thai

		@american = Restaurant.new
		@american.type = "american"
		@american.name = "Red Robin"
		@recommended << @american

	end

end