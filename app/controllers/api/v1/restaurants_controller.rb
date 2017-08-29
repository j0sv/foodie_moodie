class Api::V1::RestaurantsController < ApplicationController
  def index
    if params[:coords]
      lat, lng = params[:coords][:lat], params[:coords][:lng]
      distance = params[:distance]
      @restaurants = Restaurant.near([lat, lng], distance.to_i)
    else
      @restaurants = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  rescue => e
    render json: {error: e}, status: 422
  end
end