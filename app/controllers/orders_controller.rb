class OrdersController < ApplicationController
  include ApplicationHelper

  def index
    @order = get_order
  end

  def create

    dish = Dish.find(params[:dish_id])
    if get_order.add(dish, dish.price)
      flash[:notice] = dish.name + " was  successfully added to order!"
    else
      flash[:alert] = "Item not added, try again!"
    end

    redirect_to request.referer

  end

end
