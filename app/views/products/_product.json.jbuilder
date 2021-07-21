json.extract! product, :id, :title, :content, :price, :type, :from, :category_id, :user_id, :slug, :created_at, :updated_at
json.url product_url(product, format: :json)
