class Order < ApplicationRecord
  acts_as_shopping_cart_using :order_item

  has_many :dishes

 def tax_pct
    0
  end
end
