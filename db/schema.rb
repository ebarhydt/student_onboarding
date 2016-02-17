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

ActiveRecord::Schema.define(version: 20160209230432) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "envelopes", force: :cascade do |t|
    t.string   "account_name"
    t.string   "opportunity_id"
    t.string   "email"
    t.string   "opportunity_owner"
    t.string   "status"
    t.string   "stage"
    t.string   "envelope_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "instances", force: :cascade do |t|
    t.integer  "instance_id"
    t.integer  "run"
    t.date     "start_date"
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "room"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "invoice_id"
    t.datetime "core_updated_at"
    t.string   "core_status"
    t.integer  "core_user_id"
    t.integer  "core_instance_id"
    t.string   "opportunity_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "opportunities", force: :cascade do |t|
    t.string   "stage"
    t.datetime "sf_created_date"
    t.string   "opportunity_owner"
    t.string   "winning_date"
    t.string   "email"
    t.integer  "phone"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
