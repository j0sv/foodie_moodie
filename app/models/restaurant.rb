class Restaurant < ApplicationRecord
  #has_many :categories
  has_many :dishes
  has_many :orders
end
