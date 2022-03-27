class AddIconIdToProductCategories < ActiveRecord::Migration[6.1]
  def change
    add_reference :product_categories, :icon, null: false, foreign_key: true
  end
end
