class ProductCategory < ApplicationRecord
  has_rich_text :description
  has_one_attached :cover_image
  has_one_attached :front_image
  has_many :products, dependent: :destroy
  belongs_to :icon
  attr_accessor :remove_cover_image
  after_save { cover_image.purge if (remove_cover_image == '1' ) }
  attr_accessor :remove_front_image
  after_save { front_image.purge if (remove_front_image == '1' ) }
  
end
