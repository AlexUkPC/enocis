class AddSlugToFrezarimdfCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :frezarimdf_categories, :slug, :string
    add_index :frezarimdf_categories, :slug, unique: true
  end
end
