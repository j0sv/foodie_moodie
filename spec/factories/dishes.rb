FactoryGirl.define do
  factory :dish do
    title "MyString"
    description "MyText"
    price 1
    restaurant Restaurant.last
  end
end
