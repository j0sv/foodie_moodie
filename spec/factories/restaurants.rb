FactoryGirl.define do
  factory :restaurant do
    name 'My Joint'
    address1 'Holtermansgatan 1D'
    address2 ''
    postal_code '123 45'
    city 'Gothenburg'
    country 'Sweden'
    phone_number '031-700 00 00'
    email 'info@myjoint.se'
    longitude 57.696531
    latitude 11.9448777
    cuisine 'Thai'
  end
end
