json.array!(@orders) do |order|
  json.extract! order, :id, :client_id, :total_price, :status
  json.url order_url(order, format: :json)
end
