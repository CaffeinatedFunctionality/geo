json.array!(@locations) do |location|
  json.extract! location, :id, :address, :city, :state, :zipcode, :latitude, :longitude
  json.url location_url(location, format: :json)
end
