class AdminController < ApplicationController
	before_filter :authenticate_admin!
	# layout 'admin'
	def index
		# render :layout => false
	end

	def products
		
	end

	def users
		@user=User.all
		# render :layout => 'admin'
	end
end
