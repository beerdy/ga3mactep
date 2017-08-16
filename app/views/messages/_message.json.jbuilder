json.extract! message, :id, :name, :contact, :model, :year, :gibdd, :description, :created_at, :updated_at
json.url message_url(message, format: :json)
