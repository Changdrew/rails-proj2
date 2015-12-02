json.array!(@events) do |event|
  json.extract! event, :id, :address, :latitude, :longitude, :title, :description, :time, :date
  json.url event_url(event, format: :json)
end
