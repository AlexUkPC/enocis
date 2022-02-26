class CreateJoinTableProjectCategoriesProjects < ActiveRecord::Migration[6.1]
  def change
    create_join_table :project_categories, :projects do |t|
      # t.index [:project_category_id, :project_id]
      # t.index [:project_id, :project_category_id]
    end
  end
end
