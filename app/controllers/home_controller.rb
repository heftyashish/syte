class HomeController < ApplicationController
	def index
		@products= Product.all
	end

	def sitemap
		
	end

	def specials
		
	end

	def order
		
	end

	def view
		
	    @product= Product.find(params[:format])
	    # logger.info "================================"
	    # logger.info @product.inspect
	end

	def logout
		reset_session
		redirect_to home_index_path		
	end
end
