class Product < ApplicationRecord
  has_one_attached :image
  belongs_to :product_category
  attr_accessor :remove_image
  after_save { image.purge if (remove_image == '1' ) }
end
