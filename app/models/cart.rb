class Cart < ActiveRecord::Base
  attr_accessible  :description, :price, :name

  	def paypal_url(return_url)
	  values = {
	    :business => 'bigwig@in.com',
	    :cmd => '_cart',
	    :upload => 1,
	    :return => return_url,
	    :invoice => id
	  }
	  items=Cart.all
	  items.each_with_index do |item, index|
	    values.merge!({
	      "amount_#{index+1}" => item.price,
	      "item_name_#{index+1}" => item.name,
	      "item_number_#{index+1}" => item.id
	    })
	  end
	  "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
	end	
end
