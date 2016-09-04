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

ActiveRecord::Schema.define(version: 20160904070017) do

  create_table "battles", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.integer  "year",               limit: 4
    t.integer  "battle_number",      limit: 4
    t.string   "attacker_king",      limit: 255
    t.string   "defender_king",      limit: 255
    t.string   "attacker_1",         limit: 255
    t.string   "attacker_2",         limit: 255
    t.string   "attacker_3",         limit: 255
    t.string   "attacker_4",         limit: 255
    t.string   "defender_1",         limit: 255
    t.string   "defender_2",         limit: 255
    t.string   "defender_3",         limit: 255
    t.string   "defender_4",         limit: 255
    t.string   "attacker_outcome",   limit: 255
    t.string   "battle_type",        limit: 255
    t.string   "major_death",        limit: 255
    t.string   "major_capture",      limit: 255
    t.string   "attacker_size",      limit: 255
    t.string   "defender_size",      limit: 255
    t.string   "attacker_commander", limit: 255
    t.string   "defender_commander", limit: 255
    t.string   "summer",             limit: 255
    t.string   "location",           limit: 255
    t.string   "region",             limit: 255
    t.string   "note",               limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

end
