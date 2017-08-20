Then(/^I should see "([^"]*)"$/) do |content|
  page.should have_content(content)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

When(/^I visit "([^"]*)" page$/) do |page|
  case page
  when 'landing'
    visit root_path
  when 'restaurant'
    restaurant = Restaurant.find_by(name: 'Indian Fun')
    visit restaurant_dishes_path(restaurant)
  when 'register restaurant'
    visit new_restaurant_path
  else
    raise 'Path missing!'
  end
end

When(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

When(/^Show me the page$/) do
  save_and_open_page
end