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

ActiveRecord::Schema.define(version: 20131125194336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "citizens", force: true do |t|
    t.string  "name"
    t.integer "age"
    t.string  "gender"
    t.boolean "alive"
    t.string  "type"
    t.integer "rating"
    t.integer "district_id"
  end

  create_table "citizens_rounds", force: true do |t|
    t.integer "citizen_id"
    t.integer "round_id"
  end

  create_table "districts", force: true do |t|
    t.string "name"
  end

  create_table "games", force: true do |t|
    t.string "name"
  end

  create_table "rounds", force: true do |t|
    t.string "name"
  end

  create_table "sponsorships", force: true do |t|
    t.integer "sponsor_id"
    t.integer "tribute_id"
  end

end
