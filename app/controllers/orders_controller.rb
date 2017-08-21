class OrdersController < ApplicationController
  before_action :get_order
  before_action :get_referer

  def create
    dish = Dish.find(params[:dish_id])
    if @order.add(dish, dish.price)
      flash[:notice] = "#{dish.title} was successfully added to order!"
    else
      flash[:alert] = 'Item not added, try again!'
    end
    redirect_to session.delete(:return_to)
  end

<<<<<<< HEAD
=======
  def index
    #@order_items = Order.find_by(id: session[:order_id]).all
    #@order = Order.last
  end

  private
  def get_order
    if session[:order_id]
      @order = Order.find(session[:order_id])
    else
      @order = Order.create
      session[:order_id] = @order.id
    end
  end

  def get_referer
    session[:return_to] ||= request.referer
  end
>>>>>>> 6b17e3a37c6babc0336605f6c03d50e41a8ac491
end
