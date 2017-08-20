Then(/^I should see "([^"]*)"$/) do |content|
  page.should have_content(content)
end

When(/^I visit "([^"]*)" page$/) do |page|
  case page
    when 'landing'
      visit root_path
    when 'restaurant'
      restaurant = Restaurant.find_by(name: 'Indian Fun')
      visit restaurant_dishes_path(restaurant)
  end
end
