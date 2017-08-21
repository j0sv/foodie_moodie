FactoryGirl.define do
  factory :dish, class: 'Dish' do
    name "MyString"
    description "MyString"
    price 1
    restaurant
  end
end
