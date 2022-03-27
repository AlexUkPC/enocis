class AddIconToFrezarimdfCategories < ActiveRecord::Migration[6.1]
  def change
    add_reference :frezarimdf_categories, :icon, null: false, foreign_key: true
  end
end
