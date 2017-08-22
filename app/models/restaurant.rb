require 'geocoder'

class Restaurant < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
  has_many :dishes
  has_many :orders

  def address
    "#{address1}, #{postal_code} #{city}"
  end

end