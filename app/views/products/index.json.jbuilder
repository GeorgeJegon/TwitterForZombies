json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :main_image, :price, :status
  json.url product_url(product, format: :json)
end
