json.extract! topic, :id, :name, :description, :image, :slug, :created_at, :updated_at
json.url topic_url(topic, format: :json)
