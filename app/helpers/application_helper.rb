module ApplicationHelper
  def get_order_items_count
    if session[:order_id]
      Order.find(session[:order_id]).total_unique_items
    else
      0
    end
  end
end
