class AddEtlineIconToServices < ActiveRecord::Migration[6.1]
  def change
    add_reference :services, :etline_icon, null: false, foreign_key: true
  end
end
