class CreatePromotions < ActiveRecord::Migration[6.1]
  def change
    create_table :promotions do |t|
      t.string :title
      t.string :title_color, default: "#E5AE49"
      t.date :start_date
      t.date :end_date
      t.boolean :is_active, default: true
      t.string :btn_text, default: "Mergi la website"
      t.string :btn_url, default: "https://www.enocis.ro"
      t.string :bg_color, default: "#000000"

      t.timestamps
    end
  end
end
