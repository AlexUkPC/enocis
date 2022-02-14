class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.string :dimensions
      t.string :material
      t.string :accessories
      t.string :color

      t.timestamps
    end
  end
end
