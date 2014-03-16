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

ActiveRecord::Schema.define(version: 20140315122513) do

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "state"
    t.string   "city"
    t.string   "cep"
    t.string   "tel"
    t.string   "number_students"
    t.string   "headmaster_name"
    t.string   "headmaster_email"
    t.string   "technical_manager_name"
    t.string   "technical_manager_email"
    t.string   "coordinator_name"
    t.string   "coordinator_email"
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "stage"
    t.string   "contact_tel"
    t.string   "charge"
    t.string   "token"
    t.string   "namespace"
    t.datetime "confirmed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schools", ["token"], name: "index_schools_on_token", using: :btree

  create_table "sessions", force: true do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true, using: :btree
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at", using: :btree

end
