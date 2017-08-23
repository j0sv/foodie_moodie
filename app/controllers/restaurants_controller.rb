class RestaurantsController < ApplicationController

  def index

    if params[:search].present?
      @restaurants = Restaurant.near(params[:id])
    else
      @restaurants = Restaurant.near(helpers.remote_ip)
    end

  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @dishes = @restaurant.dishes
  end
end
