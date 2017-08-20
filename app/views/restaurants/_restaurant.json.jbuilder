json.extract! restaurant, :id, :name, :address1, :address2, :postal_code, :city, :country, :phone_number, :email, :long, :lat, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
