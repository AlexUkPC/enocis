class AddDataIconToProductCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :product_categories, :data_icon, :string
  end
end
