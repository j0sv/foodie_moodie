Then(/^I should see map$/) do
  expect(page).not_to have_selector('#map:empty')
end

Then(/^A pointer for my location$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
