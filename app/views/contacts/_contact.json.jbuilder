json.extract! contact, :id, :email, :id_hash, :created_at, :updated_at
json.url contact_url(contact, format: :json)
