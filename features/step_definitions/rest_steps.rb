Given(/^the following restaurants exist:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:restaurant, hash)
  end
end

When(/^I visit menu page for "([^"]*)"$/) do |restaurant_name|
  restaurant = Restaurant.find_by(name: restaurant_name)
  visit restaurant_dishes_path(restaurant)
end

When(/^I click on delete to remove the restaurant "([^"]*)"$/) do |restaurant_name|
  restaurant_id = Restaurant.find_by(name: restaurant_name).id
  click_link_or_button "delete_" + restaurant_id.to_s
end

When(/^I add "([^"]*)" to order$/) do |dish_name|
  add_button_with_id = Dish.find_by(name: dish_name).id
  click_link_or_button add_button_with_id
end

When(/^I visit "([^"]*)" page for "([^"]*)"$/) do |command, restaurant_name|
  restaurant = Restaurant.find_by(name: restaurant_name)

  case command
  when 'Edit'
    visit edit_restaurant_path(restaurant)
  else
    raise 'Command missing!'
  end

end