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

ActiveRecord::Schema.define(version: 20170710190211) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists_releases", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "release_id"
    t.index ["artist_id"], name: "index_artists_releases_on_artist_id"
    t.index ["release_id"], name: "index_artists_releases_on_release_id"
  end

  create_table "artists_tracks", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "track_id"
    t.index ["artist_id"], name: "index_artists_tracks_on_artist_id"
    t.index ["track_id"], name: "index_artists_tracks_on_track_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "plays"
    t.integer  "length"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_playlists_on_user_id"
  end

  create_table "playlists_tracks", force: :cascade do |t|
    t.integer "playlist_id"
    t.integer "track_id"
    t.index ["playlist_id"], name: "index_playlists_tracks_on_playlist_id"
    t.index ["track_id"], name: "index_playlists_tracks_on_track_id"
  end

  create_table "releases", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "year"
    t.integer  "length"
    t.integer  "plays"
    t.string   "single_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "series_id"
    t.index ["series_id"], name: "index_releases_on_series_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons_series", force: :cascade do |t|
    t.integer "season_id"
    t.integer "series_id"
    t.index ["season_id"], name: "index_seasons_series_on_season_id"
    t.index ["series_id"], name: "index_seasons_series_on_series_id"
  end

  create_table "series", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "release_id"
    t.index ["release_id"], name: "index_tracks_on_release_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
