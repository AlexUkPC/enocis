class Project < ApplicationRecord
  has_and_belongs_to_many :project_categories
  has_rich_text :description
  has_many_attached :images
  extend FriendlyId
  friendly_id :name
end
