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

ActiveRecord::Schema.define(version: 2019_03_18_113530) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "halls", force: :cascade do |t|
    t.string "room_type"
    t.integer "capacity"
    t.integer "surface"
    t.string "accessible"
    t.string "listing_name"
    t.text "summary"
    t.string "address"
    t.boolean "is_table"
    t.boolean "is_chair"
    t.boolean "is_kitchen"
    t.boolean "is_wc"
    t.boolean "is_parking"
    t.boolean "is_outdoor"
    t.boolean "is_tv"
    t.boolean "is_projector"
    t.boolean "is_stage"
    t.boolean "is_shower"
    t.boolean "is_sound"
    t.boolean "is_bar"
    t.boolean "is_air"
    t.boolean "is_heating"
    t.boolean "is_wifi"
    t.boolean "is_decoration"
    t.boolean "is_wedding"
    t.boolean "is_baptism"
    t.boolean "is_birthday"
    t.boolean "is_special"
    t.boolean "is_meeting"
    t.boolean "is_lotto"
    t.boolean "is_gathering"
    t.boolean "is_concert"
    t.boolean "is_show"
    t.boolean "is_seminary"
    t.boolean "is_conference"
    t.integer "price_normal"
    t.integer "price_local"
    t.integer "price_association"
    t.integer "price_company"
    t.integer "price_agent"
    t.string "phone"
    t.string "email"
    t.string "website"
    t.string "facebook"
    t.string "instagram"
    t.string "pinterest"
    t.string "twitter"
    t.string "youtube"
    t.boolean "active"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_halls_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "company"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "halls", "users"
end
