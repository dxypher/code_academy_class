class StaticController < ApplicationController
	def index
		render 'static/index'
	end

	def movie
		render 'static/movies'
	end

	def microsoft
		redirect_to 'http://microsoft.com'
	end

	def google
		redirect_to 'http://google.com'
	end

	def twitter
		redirect_to 'http://twitter.com'
	end
end