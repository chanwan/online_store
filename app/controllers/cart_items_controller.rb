class CartItemsController < ApplicationController
	def create
		@cartit = CartItem.new(cartitem_params)
		if @cartit.save
			redirect_to :back
		end

	end

	private

	def cartitem_params
		params.require(:cart_item).permit(:cart_id, :dish_id)
	end
end
