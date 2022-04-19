class ProjectCategory < ApplicationRecord
  has_and_belongs_to_many :projects
  extend FriendlyId
  friendly_id :name
end
