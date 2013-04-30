class CartController < ApplicationController
 before_filter :require_login

    def require_login
	    unless session[:user].present?
	      flash[:error] = "You must be logged in to access this section"
	      redirect_to login_index_path # halts request cycle
	    end
    end
   
	def index
		item = Product.find(params[:format])
		if !Cart.find_by_name(item.name)
			new_item=Cart.new(:price=>item.price, :description=>item.description, :name=>item.name)
			new_item.save
		end
		redirect_to cart_display_path
	end

	def display
		session[:cart_items]=Cart.all.count
		@cart_items=Cart.all
		array=[]
		@cart_items.each do |item|
			array << item.price.to_i
		end
		total_price=array.inject(:+) # not used Yet !
		@cart=Cart.new		
	end
end
