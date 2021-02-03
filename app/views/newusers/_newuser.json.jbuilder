json.extract! newuser, :id, :name, :mobile, :email, :address, :created_at, :updated_at
json.url newuser_url(newuser, format: :json)
