json.extract! history, :id, :datetime, :url, :contact_id, :created_at, :updated_at
json.url history_url(history, format: :json)
