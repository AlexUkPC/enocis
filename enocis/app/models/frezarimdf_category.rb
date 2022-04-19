class FrezarimdfCategory < ApplicationRecord
  has_many :frezarimdf, dependent: :destroy
  belongs_to :icon
  extend FriendlyId
  friendly_id :name
end
