class AddSlugToFrezarimdfs < ActiveRecord::Migration[6.1]
  def change
    add_column :frezarimdfs, :slug, :string
    add_index :frezarimdfs, :slug, unique: true
  end
end
