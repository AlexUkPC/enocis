class Service < ApplicationRecord
  has_rich_text :description
  has_many_attached :images
  has_many :youtubes, dependent: :destroy
  accepts_nested_attributes_for :youtubes, reject_if: :all_blank, allow_destroy: true
  belongs_to :etline_icon
end
