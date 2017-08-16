Given(/^I am on the 'landing' page$/) do
  visit root_path
end

Given(/^the following restaurants exists:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:restaurant, hash)
  end
end

Then(/^I should see  "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see '(\d+)'$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see 'Indian Food'$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see 'Indian Fun'$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
