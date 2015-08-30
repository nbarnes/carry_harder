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

ActiveRecord::Schema.define(version: 20150830213604) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chassis", force: :cascade do |t|
    t.string   "chassis_designation"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "chassis_matches", force: :cascade do |t|
    t.integer  "chassis_id"
    t.integer  "match_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "chassis_matches", ["chassis_id"], name: "index_chassis_matches_on_chassis_id", using: :btree
  add_index "chassis_matches", ["match_id"], name: "index_chassis_matches_on_match_id", using: :btree

  create_table "matches", force: :cascade do |t|
    t.string   "map_name"
    t.string   "game_mode"
    t.string   "battle_duration"
    t.string   "red_team_score"
    t.string   "blue_team_score"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "pilot_matches", id: false, force: :cascade do |t|
    t.integer "pilot_id"
    t.integer "match_id"
    t.integer "chassis_id"
    t.integer "alive?"
    t.integer "match_score"
    t.integer "kills"
    t.integer "assists"
    t.integer "damage_done"
  end

  add_index "pilot_matches", ["match_id"], name: "index_pilot_matches_on_match_id", using: :btree
  add_index "pilot_matches", ["pilot_id"], name: "index_pilot_matches_on_pilot_id", using: :btree

  create_table "pilots", force: :cascade do |t|
    t.string "callsign"
  end

  create_table "screenshots", force: :cascade do |t|
    t.integer "match_id"
    t.string  "image",                 null: false
    t.string  "thumbnail"
    t.string  "map_name_slice"
    t.string  "game_mode_slice"
    t.string  "battle_duration_slice"
    t.string  "blue_team_score_slice"
    t.string  "red_team_score_slice"
  end

end
