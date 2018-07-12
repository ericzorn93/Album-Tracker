class AddAlbumsToArtists < ActiveRecord::Migration[5.2]
  def change
    add_reference :artists, :albums, foreign_key: true
  end
end
