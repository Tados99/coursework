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

ActiveRecord::Schema.define(version: 2020_11_18_163207) do

  create_table "fixtures", force: :cascade do |t|
    t.string "home", null: false
    t.string "away", null: false
    t.integer "score_home"
    t.integer "score_away"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "team"
    t.string "surname", null: false
    t.string "forename", null: false
    t.date "dob", null: false
    t.integer "games_played"
    t.integer "scores"
    t.integer "assists"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name", null: false
    t.string "city", null: false
    t.date "est_year", null: false
    t.integer "championships_won"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
