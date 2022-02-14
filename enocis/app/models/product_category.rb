class ProductCategory < ApplicationRecord
  has_rich_text :description
  has_one_attached :cover_image
  has_one_attached :front_image
end
