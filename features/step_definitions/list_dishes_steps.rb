Given(/^the following dishes exist:$/) do |table|
  table.hashes.each do |hash|
    restaurant = Restaurant.find_by(name: hash[:restaurant])
    FactoryGirl.create(:dish, hash.except!(:restaurant).merge!({restaurant: restaurant}))
  end
end