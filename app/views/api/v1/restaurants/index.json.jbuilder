json.restaurants @restaurants do |restaurant|
  json.id restaurant.id
  json.name restaurant.name
  json.address1 restaurant.address1
  json.address2 restaurant.address2
  json.postal_code restaurant.postal_code
  json.city restaurant.city
  json.country restaurant.country
  json.phone_number restaurant.phone_number
  json.email restaurant.email
  json.latitude restaurant.latitude
  json.longitude restaurant.longitude
  json.cuisine restaurant.cuisine
end