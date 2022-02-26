class FrezarimdfCategory < ApplicationRecord
  has_many :frezarimdf, dependent: :destroy
end
