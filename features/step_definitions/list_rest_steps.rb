
Given(/^the following restaurants exist:$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:restaurant, hash)
  end
end

Then(/^I should see "([^"]*)"$/) do |content|
  page.should have_content(content)
end