class Promotion < ApplicationRecord
  scope :between_dates, lambda {|date| where("(start_date <= ? AND end_date >= ?)", date, date )}
  validates :start_date, presence: true
  validates :end_date, presence: true
  validate :end_date_is_after_start_date
  has_one_attached :bg_image
  has_one_attached :main_image_landscape
  has_one_attached :main_image_portrait
  attr_accessor :remove_bg_image
  after_save { bg_image.purge_later if (remove_bg_image == '1' ) }
  attr_accessor :remove_main_image_landscape
  after_save { main_image_landscape.purge_later if (remove_main_image_landscape == '1' ) }
  attr_accessor :remove_main_image_portrait
  after_save { main_image_portrait.purge_later if (remove_main_image_portrait == '1' ) }

  private
  def end_date_is_after_start_date
    return if end_date.blank? || start_date.blank?
  
    if end_date < start_date
      errors.add(:end_date, "cannot be before the start date") 
    end 
  end
end
