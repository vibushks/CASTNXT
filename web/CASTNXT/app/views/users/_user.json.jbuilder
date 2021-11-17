json.extract! user, :id, :token, :name, :email, :accType, :created_at, :updated_at
json.url user_url(user, format: :json)
