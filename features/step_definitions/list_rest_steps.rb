When(/^I visit "landing" page$/) do
  visit root_path
end


Given(/^the following restaurants exists:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:restaurant, hash)
  end
end

Then(/^I should see "([^"]*)"$/) do |content|
  page.should have_content(content)
end