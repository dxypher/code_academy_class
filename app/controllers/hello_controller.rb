class HelloController < ApplicationController
	def index
		render :text => "Hello World"
	end

end