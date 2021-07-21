json.extract! product, :id, :title, :describre, :price, :type, :slug, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
