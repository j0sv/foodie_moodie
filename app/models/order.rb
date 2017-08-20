class Order < ApplicationRecord
  acts_as_shopping_cart_using :order_item

  def tax_pct
    12
  end
end
