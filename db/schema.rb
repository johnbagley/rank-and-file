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

ActiveRecord::Schema.define(version: 20140722181525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "members", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "chamber"
    t.string   "party"
    t.text     "photo_url"
    t.string   "salary"
    t.string   "start_date"
    t.text     "current_roles"
    t.text     "current_role_type"
    t.string   "year_of_start_date"
    t.string   "starting_senator_salary"
    t.string   "year_of_end_date"
    t.string   "cumulative_senator_salary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name"
    t.string   "state"
    t.integer  "bills_sponsored",           default: 0
    t.integer  "bills_cosponsored",         default: 0
    t.integer  "amendments_sponsored",      default: 0
    t.integer  "amendments_cosponsored",    default: 0
  end

end
