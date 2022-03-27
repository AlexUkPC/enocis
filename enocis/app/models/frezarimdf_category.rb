class FrezarimdfCategory < ApplicationRecord
  has_many :frezarimdf, dependent: :destroy
  belongs_to :icon
end
