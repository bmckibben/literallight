json.extract! product, :id, :name, :description, :user_id, :company_id, :created_at, :updated_at
json.url product_url(product, format: :json)
