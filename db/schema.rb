# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160407131300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "name"
    t.text     "message"
    t.integer  "snack_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["snack_id"], name: "index_comments_on_snack_id", using: :btree

  create_table "snacks", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "country"
    t.text     "description"
    t.string   "mood"
    t.string   "taste"
    t.integer  "nutrition_level"
    t.string   "seller_url"
    t.string   "video_url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "likes"
  end

  add_foreign_key "comments", "snacks"
end
