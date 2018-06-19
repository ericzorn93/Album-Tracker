json.extract! album, :id, :band, :title, :genre, :year, :plays, :created_at, :updated_at
json.url album_url(album, format: :json)
