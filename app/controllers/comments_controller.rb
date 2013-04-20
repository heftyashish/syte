class CommentsController < ApplicationController
	def create
		@product = Product.find(params[:product_id])
		@comment = @product.comments.create(params[:comment])

		respond_to do |format|
    		format.js
		end
	end

  def destroy
    @post = Product.find(params[:post_id])
    @comment = @product.comments.find(params[:id])
    @comment.destroy
    redirect_to home_view_path(@product)
  end	

end
