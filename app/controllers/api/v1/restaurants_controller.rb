class Api::V1::RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  rescue => e
    render json: {error: e}
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  rescue => e
    render json: {error: e}
  end
end