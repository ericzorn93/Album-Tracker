# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_07_02_145654) do

  create_table "albums", force: :cascade do |t|
    t.string "band"
    t.string "title"
    t.string "genre"
    t.string "year"
    t.integer "plays"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "record_label_id"
    t.index ["record_label_id"], name: "index_albums_on_record_label_id"
  end

  create_table "albums_artists", id: false, force: :cascade do |t|
    t.integer "album_id", null: false
    t.integer "artist_id", null: false
    t.index ["album_id", "artist_id"], name: "index_albums_artists_on_album_id_and_artist_id"
    t.index ["artist_id", "album_id"], name: "index_albums_artists_on_artist_id_and_album_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "record_labels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
