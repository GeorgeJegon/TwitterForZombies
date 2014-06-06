json.array!(@zombies) do |zombie|
  json.extract! zombie, :id, :name, :age, :email, :password, :status, :image
  json.url zombie_url(zombie, format: :json)
end
