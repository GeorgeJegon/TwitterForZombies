json.array!(@banners) do |banner|
  json.extract! banner, :id, :title, :image, :status, :caption, :order
  json.url banner_url(banner, format: :json)
end
