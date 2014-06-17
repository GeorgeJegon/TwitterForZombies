json.array!(@categories) do |category|
  json.extract! category, :id, :name, :status, :category_id
  json.url category_url(category, format: :json)
end
