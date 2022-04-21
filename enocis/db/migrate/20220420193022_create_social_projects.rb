class CreateSocialProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :social_projects do |t|
      t.string :title

      t.timestamps
    end
  end
end
