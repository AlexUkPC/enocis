class Service < ApplicationRecord
  belongs_to :etline_icon

  has_rich_text :description

  has_many_attached :images
  attr_accessor :remove_images
  after_save {if remove_images then images.each do |image| image.purge if remove_images.include?(image.id.to_s) end end }

  has_many :youtubes, dependent: :destroy
  accepts_nested_attributes_for :youtubes, reject_if: :all_blank, allow_destroy: true

end
