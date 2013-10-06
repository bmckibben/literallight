json.array!(@products) do |product|
  json.extract! product, :product_id, :title, :description, :status, :display_order, :image, :retail_price, :link, :author_last, :author_first, :publish_year, :genre, :keyword, :rating, :hugo, :nebula
  json.url product_url(product, format: :json)
end
