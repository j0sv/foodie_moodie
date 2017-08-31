class Dish < ApplicationRecord
  belongs_to :restaurant
  belongs_to :dish_category
  has_attached_file :image,
                    styles: { large: '800x400>', medium: '400x200>' },
                    default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
