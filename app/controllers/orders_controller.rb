class OrdersController < ApplicationController

  def create
    if session[:order_id]
      order = Order.find(session[:order_id])
    else
      order = Order.create
      session[:order_id] = order.id
    end

   dish = Dish.find(params[:dish_id])
    if order.add(dish, dish.price)
      flash[:notice] = dish.title + " was  successfully added to order!"
    else
      flash[:alert] = "Item not added, try again!"
    end
    redirect_to order_path
  end

 def index
    #@order_items = Order.find_by(id: session[:order_id]).all
    #@order = Order.last
  end
end
