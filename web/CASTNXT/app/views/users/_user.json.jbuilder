json.extract! user, :id, :token, :email, :name, :userType, :created_at, :updated_at
json.url user_url(user, format: :json)
