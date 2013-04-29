class CartController < ApplicationController

	def index
		item = Product.find(params[:format])
		if !Cart.find_by_name(item.name)
			new_item=Cart.new(:price=>item.price, :description=>item.description, :name=>item.name)
			new_item.save
		end
		@cart_items=Cart.all
		array=[]
		@cart_items.each do |item|
			array << item.price.to_i
		end
		total_price=array.inject(:+) # not used Yet !
		@cart=Cart.new
	end
end
