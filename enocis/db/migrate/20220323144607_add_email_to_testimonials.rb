class AddEmailToTestimonials < ActiveRecord::Migration[6.1]
  def change
    add_column :testimonials, :email, :string
  end
end
