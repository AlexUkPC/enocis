class CreateYoutubesps < ActiveRecord::Migration[6.1]
  def change
    create_table :youtubesps do |t|
      t.string :url
      t.belongs_to :social_project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
