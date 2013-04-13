class HomeController < ApplicationController
	def index
		
	end

	def contact
		
	end

	def sitemap
		
	end

	def specials
		
	end

	def order
		
	end

	def logout
		reset_session
		redirect_to home_index_path		
	end
end
