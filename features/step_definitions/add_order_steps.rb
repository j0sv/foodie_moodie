Then(/^Order items in cart should be "([^"]*)"$/) do |expected_count|
  within "#order_item" do
    page.should have_content expected_count
  end
end

When(/^I add "([^"]*)" to order$/) do |dish_name|
  add_button_with_id = Dish.find_by(name: dish_name).id
  click_link_or_button add_button_with_id
end
