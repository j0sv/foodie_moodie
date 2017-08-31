FactoryGirl.define do
  factory :dish do
    title 'MyString'
    description 'MyText'
    price 1
    restaurant
    dish_category
    image File.new("#{Rails.root}/spec/fixtures/bild.jpeg")
  end
end
