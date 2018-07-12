class DropArtistsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :artists
  end
end
