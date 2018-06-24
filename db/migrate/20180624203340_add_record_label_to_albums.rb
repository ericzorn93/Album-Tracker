class AddRecordLabelToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_reference :albums, :record_label, foreign_key: true
  end
end
