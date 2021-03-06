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

ActiveRecord::Schema.define(version: 20161101234204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "gov_type"
    t.integer  "population"
    t.string   "capitol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "slangs", force: :cascade do |t|
    t.text     "phrase"
    t.text     "translation"
    t.text     "example"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "country_id"
    t.integer  "user_id"
  end

  add_index "slangs", ["country_id"], name: "index_slangs_on_country_id", using: :btree
  add_index "slangs", ["user_id"], name: "index_slangs_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  add_foreign_key "slangs", "countries"
  add_foreign_key "slangs", "users"
end
