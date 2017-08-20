Given(/^the following restaurants exist:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:restaurant, hash)
  end
end

When(/^I visit menu page for "([^"]*)"$/) do |restaurant_name|
  restaurant = Restaurant.find_by(name: restaurant_name)
  visit restaurant_dishes_path(restaurant)
end