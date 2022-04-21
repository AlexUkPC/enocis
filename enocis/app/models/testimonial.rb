class Testimonial < ApplicationRecord
  has_one_attached :image
  attr_accessor :remove_image
  after_save { image.purge if (remove_image == '1' ) }
  validates :name, :comment, presence: true
end
