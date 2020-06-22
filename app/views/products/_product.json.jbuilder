json.extract! product, :id, :name, :description, :release_date, :category_id, :store_id, :price, :created_at, :updated_at
json.url product_url(product, format: :json)
