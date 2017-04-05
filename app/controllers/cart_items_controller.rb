class CartItemsController < ApplicationController
	def create
		@cartit = CartItem.find_by_cart_id_and_dish_id(params[:cart_item][:cart_id], params[:cart_item][:dish_id])
		if @cartit.nil?
			@cartit = CartItem.new(cartitem_params)
			@cartit.count =1
		else
			@cartit.count +=1
		end

		if @cartit.save
			redirect_to :back
		end

	end

	private

	def cartitem_params
		params.require(:cart_item).permit(:cart_id, :dish_id)
	end
end

params = {
	:cart_item => {
		:cart_id => 1,
		:dish_id => 12
	}
}