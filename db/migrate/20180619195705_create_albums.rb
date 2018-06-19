class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :band
      t.string :title
      t.string :genre
      t.string :year
      t.integer :plays

      t.timestamps
    end
  end
end
