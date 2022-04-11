class CreateEtlineIcons < ActiveRecord::Migration[6.1]
  def change
    create_table :etline_icons do |t|
      t.string :name

      t.timestamps
    end
  end
end
