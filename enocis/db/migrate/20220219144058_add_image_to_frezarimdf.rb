class AddImageToFrezarimdf < ActiveRecord::Migration[6.1]
  def change
    add_column :frezarimdfs, :image, :text
  end
end
