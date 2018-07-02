class DeleteAlbumsArtistsTable < ActiveRecord::Migration[5.2]
  def changed
    drop_table :albums_artists
  end
end
