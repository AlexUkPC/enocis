class AddMoreDetailsToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :url_google_maps, :string
    add_column :companies, :email_notice_contact, :string
  end
end
