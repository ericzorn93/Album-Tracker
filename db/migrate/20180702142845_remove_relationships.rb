class RemoveRelationships < ActiveRecord::Migration[5.2]
  def change
    drop_table :albums_artists
    remove_column :albums, :artist_id, :integer
  end
end
