json.extract! testimonial, :id, :name, :title, :comment, :approved, :created_at, :updated_at
json.url testimonial_url(testimonial, format: :json)
