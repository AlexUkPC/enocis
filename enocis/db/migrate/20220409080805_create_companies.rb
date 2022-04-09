class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :address
      t.string :phone
      t.string :email1
      t.string :email2
      t.string :facebook
      t.string :instagram

      t.timestamps
    end
  end
end
