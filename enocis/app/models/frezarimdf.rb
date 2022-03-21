class Frezarimdf < ApplicationRecord
  has_one_attached :image_svg
  belongs_to :frezarimdf_category
  attr_accessor :remove_image_svg
  after_save { image_svg.purge if (remove_image_svg == '1' ) }
end
