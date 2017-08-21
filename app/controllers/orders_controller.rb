class OrdersController < ApplicationController

  def create
    session[:return_to] ||= request.referer

    if session[:order_id]
      order = Order.find(session[:order_id])
      if order == 0
        order = Order.create
        session[:order_id] = order.id
      end
    else
      order = Order.create
      session[:order_id] = order.id

    end

   dish = Dish.find(params[:dish_id])
     order.add(dish, dish.price)
      flash[:notice] = dish.title + " was  successfully added to order!"

    redirect_to session.delete(:return_to)
  end

end
