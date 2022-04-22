class Project < ApplicationRecord
  has_and_belongs_to_many :project_categories

  has_rich_text :description

  has_many_attached :images
  attr_accessor :remove_images
  after_save {if remove_images then images.each do |image| image.purge if remove_images.include?(image.id.to_s) end end }

  extend FriendlyId
  friendly_id :name
end
