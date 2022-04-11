class RemoveIconFromServices < ActiveRecord::Migration[6.1]
  def change
    remove_column :services, :icon, :string
  end
end
