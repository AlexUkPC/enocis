class CreateYoutubes < ActiveRecord::Migration[6.1]
  def change
    create_table :youtubes do |t|
      t.string :url
      t.belongs_to :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
