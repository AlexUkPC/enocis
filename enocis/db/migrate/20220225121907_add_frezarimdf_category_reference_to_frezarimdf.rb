class AddFrezarimdfCategoryReferenceToFrezarimdf < ActiveRecord::Migration[6.1]
  def change
    add_reference :frezarimdfs, :frezarimdf_category, null: false, foreign_key: true
  end
end
