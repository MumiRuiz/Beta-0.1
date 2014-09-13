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

ActiveRecord::Schema.define(version: 20140910055205) do

  create_table "foundations", force: true do |t|
    t.string   "foundation_name"
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.string   "location"
    t.string   "website"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "pets", force: true do |t|
    t.string   "pet_name"
    t.integer  "pet_age"
    t.string   "pet_type"
    t.string   "pet_breed"
    t.string   "pet_gender"
    t.string   "pet_size"
    t.string   "pet_special_needs"
    t.string   "pet_household_match"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "users", force: true do |t|
    t.string   "fist_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
