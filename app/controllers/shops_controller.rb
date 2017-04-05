class ShopsController < ApplicationController
  def index
  	@shops = Shop.all
  	@cart = Cart.new
  end

  def show
  	@shop = Shop.find(params[:id])
  	@dish = @shop.dishes

  	@cart = current_user.carts.where(shop_id: @shop.id).first
  	if @cart.nil?
  		@cart = Cart.create!(user_id: current_user.id, shop_id: @shop.id)
  	end

  end

end
