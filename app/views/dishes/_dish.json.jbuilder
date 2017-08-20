json.extract! dish, :id, :name, :description, :price, :restaurant_id, :created_at, :updated_at
json.url dish_url(dish, format: :json)
