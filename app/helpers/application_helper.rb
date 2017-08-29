module ApplicationHelper
  DEFAULT_IP_LOCATION = '195.67.156.197'
  LOCALHOST_IP = '127.0.0.1'

  def remote_ip
    if request.remote_ip == LOCALHOST_IP
      DEFAULT_IP_LOCATION
    else
      request.remote_ip
    end
  end

  def get_order
    if Order.exists?(session[:order_id])
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
