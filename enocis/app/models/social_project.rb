class SocialProject < ApplicationRecord
  has_rich_text :description

  has_one_attached :main_image
  attr_accessor :remove_main_image
  after_save { main_image.purge_later if (remove_main_image == '1' ) }

  has_many_attached :images
  attr_accessor :remove_images
  after_save {if remove_images then images.each do |image| image.purge if remove_images.include?(image.id.to_s) end end }

  has_many :youtubesps, dependent: :destroy
  accepts_nested_attributes_for :youtubesps, reject_if: :all_blank, allow_destroy: true
  
  extend FriendlyId
  friendly_id :title
end
