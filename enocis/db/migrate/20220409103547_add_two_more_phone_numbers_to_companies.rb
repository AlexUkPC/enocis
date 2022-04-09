class AddTwoMorePhoneNumbersToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :phone_name, :string
    add_column :companies, :phone2, :string
    add_column :companies, :phone2_name, :string
    add_column :companies, :phone3, :string
    add_column :companies, :phone3_name, :string
  end
end
