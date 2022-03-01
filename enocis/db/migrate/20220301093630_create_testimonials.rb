class CreateTestimonials < ActiveRecord::Migration[6.1]
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :title
      t.text :comment
      t.boolean :approved, default: false

      t.timestamps
    end
  end
end
