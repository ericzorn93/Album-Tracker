class Remove < ActiveRecord::Migration[5.2]
  def change
    drop_table :artists
    drop_table :albums_artists
  end
end
