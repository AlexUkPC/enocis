class Company < ApplicationRecord
  has_one_attached :frezari_mdf_cover_image
  has_one_attached :frezari_mdf_front_image
  has_one_attached :projects_cover_image
  has_one_attached :projects_front_image
  has_one_attached :services_cover_image
  has_one_attached :services_front_image
  has_one_attached :contact_cover_image
  has_one_attached :politica_de_confidentialitate_cover_image
  has_one_attached :politica_cookies_cover_image
  attr_accessor :remove_frezari_mdf_cover_image
  after_save { frezari_mdf_cover_image.purge if (remove_frezari_mdf_cover_image == '1' ) }
  attr_accessor :remove_frezari_mdf_front_image
  after_save { frezari_mdf_front_image.purge if (remove_frezari_mdf_front_image == '1' ) }
  attr_accessor :remove_projects_cover_image
  after_save { projects_cover_image.purge if (remove_projects_cover_image == '1' ) }
  attr_accessor :remove_projects_front_image
  after_save { projects_front_image.purge if (remove_projects_front_image == '1' ) }
  attr_accessor :remove_services_cover_image
  after_save { services_cover_image.purge if (remove_services_cover_image == '1' ) }
  attr_accessor :remove_services_front_image
  after_save { services_front_image.purge if (remove_services_front_image == '1' ) }
  attr_accessor :remove_contact_cover_image
  after_save { contact_cover_image.purge if (remove_contact_cover_image == '1' ) }
  attr_accessor :remove_politica_de_confidentialitate_cover_image
  after_save { politica_de_confidentialitate_cover_image.purge if (remove_politica_de_confidentialitate_cover_image == '1' ) }
  attr_accessor :remove_politica_cookies_cover_image
  after_save { politica_cookies_cover_image.purge if (remove_politica_cookies_cover_image == '1' ) }
end
