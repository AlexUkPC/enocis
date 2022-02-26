class CreateFrezarimdfCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :frezarimdf_categories do |t|
      t.string :name
      t.string :data_icon

      t.timestamps
    end
  end
end
