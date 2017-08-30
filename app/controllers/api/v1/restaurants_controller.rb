class Api::V1::RestaurantsController < ActionController::API
  def index
    if params[:lat] && params[:lng]
      lat, lng = params[:lat].to_f, params[:lng].to_f
      distance = params[:distance].to_i
      @restaurants = Restaurant.near([lat, lng], distance)
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