class OrderItem < ApplicationRecord
  acts_as_shopping_cart_for :order
end
