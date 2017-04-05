class CartItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :dish
  belongs_to :user
end
