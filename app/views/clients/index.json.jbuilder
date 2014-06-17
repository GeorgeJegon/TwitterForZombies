json.array!(@clients) do |client|
  json.extract! client, :id, :zipcode, :phone, :celphone, :street, :country_id
  json.url client_url(client, format: :json)
end
