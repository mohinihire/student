json.extract! person, :id, :name, :mobile, :email, :address, :created_at, :updated_at
json.url person_url(person, format: :json)
