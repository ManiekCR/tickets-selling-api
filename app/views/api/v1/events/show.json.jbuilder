json.extract! @event, :id, :name, :date
json.time @event.time.strftime('%H:%M')
