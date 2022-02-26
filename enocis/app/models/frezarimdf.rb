class Frezarimdf < ApplicationRecord
  has_one_attached :image_svg
  belongs_to :frezarimdf_category
end
