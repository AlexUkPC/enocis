class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :icon
      t.string :title

      t.timestamps
    end
  end
end
