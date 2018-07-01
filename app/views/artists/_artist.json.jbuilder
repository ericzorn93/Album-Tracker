json.extract! artist, :id, :name, :genre, :num_of_members, :created_at, :updated_at
json.url artist_url(artist, format: :json)
