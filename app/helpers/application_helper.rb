module ApplicationHelper
  def get_order
    if session[:order_id]
      order = Order.find(session[:order_id])
    else
      order = Order.create
      session[:order_id] = order.id
    end

    order
  end

  def get_order_items_count
    if session[:order_id]
      return Order.find(session[:order_id]).total_unique_items
    else
      return 0
    end
  end

end
