json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :status, :image, :last_access
  json.url user_url(user, format: :json)
end
