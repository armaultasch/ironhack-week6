class BidsController < ApplicationController
		def new
		@my_bid = User.new
		render "new"
	end

	def create
		@my_user = User.find_by(id: params[:user_id])
		@my_product = Product.find(params[:product_id])
		@my_bid = @my_product.bids.new(
			:amount => params[:bid][:amount],
			:user_id => @my_user.id,
			:product_id => @my_product.id)
		@my_bid.save

		redirect_to "/users/#{@my_user.id}/products/#{@my_product.id}"
		
	end


end
