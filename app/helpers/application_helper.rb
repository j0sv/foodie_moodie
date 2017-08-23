module ApplicationHelper
  def get_order_items_count
    if session[:order_id]
      Order.find(session[:order_id]).total_unique_items
    else
      0
    end
  end

  def remote_ip
    if request.remote_ip == '127.0.0.1'
      # Hard coded remote address
      '195.67.156.197'
    else
      request.remote_ip
    end
  end

end
