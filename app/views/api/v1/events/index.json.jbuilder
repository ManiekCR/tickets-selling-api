json.events do
  json.array! @events do |event|
    json.extract! event, :id, :name, :date
    json.time event.time.strftime('%H:%M')
  end
end
