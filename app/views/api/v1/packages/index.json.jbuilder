json.packages @packages do |package|
  json.package do
    json.(package, :name, :duration)
    json.provider do
      json.(package.provider, :name, :description, :image_url)
      json.rating package.provider.average_rating
    end
  end
end