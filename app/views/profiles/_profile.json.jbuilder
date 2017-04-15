json.extract! profile, :id, :name, :username, :age, :gender, :city, :bio, :interests, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
