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


ActiveRecord::Schema.define(version: 2018_11_02_030037) do

ActiveRecord::Schema.define(version: 2018_11_08_042116) do


  create_table "boards", force: :cascade do |t|
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "manners", force: :cascade do |t|
    t.string "entry"
    t.integer "board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_manners_on_board_id"
  end

  create_table "maps", force: :cascade do |t|
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.integer "board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_maps_on_board_id"
  end

  create_table "moods", force: :cascade do |t|
    t.string "mood"
    t.integer "board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "image"
    t.integer "manner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manner_id"], name: "index_photos_on_manner_id"

  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "waves", force: :cascade do |t|
    t.string "status"
    t.string "comment"
    t.integer "board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.index ["board_id"], name: "index_waves_on_board_id"
  end

end
