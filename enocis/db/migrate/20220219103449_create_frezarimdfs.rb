class CreateFrezarimdfs < ActiveRecord::Migration[6.1]
  def change
    create_table :frezarimdfs do |t|
      t.string :name

      t.timestamps
    end
  end
end
