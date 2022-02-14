json.extract! product, :id, :name, :price, :dimensions, :material, :accessories, :color, :created_at, :updated_at
json.url product_url(product, format: :json)
