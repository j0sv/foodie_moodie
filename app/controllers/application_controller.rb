class ApplicationController < ActionController::Base
  before_action :get_order
  helper ApplicationHelper
  protect_from_forgery with: :exception

private
  def get_order
    if session[:order_id]
      @order = Order.find(session[:order_id])
    else
      @order = Order.create
      session[:order_id] = @order.id
    end
  end
end
