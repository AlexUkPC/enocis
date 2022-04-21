class AddSlugToSocialProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :social_projects, :slug, :string
    add_index :social_projects, :slug, unique: true
  end
end
