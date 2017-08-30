Given(/^the following categories of dishes exist:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:dish_category, hash)
  end
end

Given(/^the following dishes exist:$/) do |table|
  table.hashes.each do |hash|
    restaurant = Restaurant.find_by(name: hash[:restaurant])
    dish_category = DishCategory.find_by(name: hash[:dish_category])
    dish_hash = hash.except('restaurant', 'dish_category', 'image')
    .merge({restaurant: restaurant, dish_category: dish_category})
    dish = FactoryGirl.create(:dish, dish_hash)
    dish.image = File.new("#{Rails.root}/spec/fixtures/bild.jpeg")
    dish.save
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
      visit orders_path
  end
end

Given(/^the following categories exist:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:dish_category, hash)
  end
end

And(/^the dish "([^"]*)" should have "([^"]*)" as image$/) do |dish_name, image_file|
  dish = Dish.find_by(title: dish_name)
  within("#dish-#{dish.id}") do
    expect(page).to have_css("img[src*='#{image_file}']")
  end
end