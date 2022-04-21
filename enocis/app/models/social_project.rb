class SocialProject < ApplicationRecord
  has_rich_text :description
  has_one_attached :main_image
  has_many_attached :images
  has_many :youtubesps, dependent: :destroy
  accepts_nested_attributes_for :youtubesps, reject_if: :all_blank, allow_destroy: true
  extend FriendlyId
  friendly_id :title
end
