Given(/^the following categories of dishes exist:$/) do |table|
  table.hashes.each do |hash|
    #rest_id = Restaurant.find_by(name: hash['restaurant']).id
    FactoryGirl.create(:category, hash)
  end
end

Given(/^the following dishes exist:$/) do |table|
  table.hashes.each do |hash|
    restaurant = Restaurant.find_by(name: hash[:restaurant])
    FactoryGirl.create(:dish, hash.except!(:restaurant).merge!({restaurant: restaurant}))
  end
end

When(/^I visit "([^"]*)" page$/) do |page|
  case page
    when 'landing'
      visit root_path
    when 'restaurant'
      restaurant = Restaurant.find_by(name: 'Indian Fun')
      visit restaurant_path(restaurant)
    when 'Order'
      #order = Order.find_by(order_id: 'papadom')
      visit orders_path
  end
end
