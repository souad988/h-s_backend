json.extract! product, :id, :name, :price, :like_count, :category_id, :description, :deleted, :created_at, :updated_at
json.url product_url(product, format: :json)
