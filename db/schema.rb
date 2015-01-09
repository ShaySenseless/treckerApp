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

ActiveRecord::Schema.define(version: 20150109094331) do

  create_table "auftrags", force: :cascade do |t|
    t.date     "von"
    t.date     "bis"
    t.integer  "kunde_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "auftrags", ["kunde_id"], name: "index_auftrags_on_kunde_id"

  create_table "kundes", force: :cascade do |t|
    t.string   "vorname"
    t.string   "nachname"
    t.string   "handynummer"
    t.string   "festnetz"
    t.string   "email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "leistungs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "machines", force: :cascade do |t|
    t.string   "name"
    t.decimal  "benzin"
    t.boolean  "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mitarbeiters", force: :cascade do |t|
    t.string   "vorname"
    t.string   "nachname"
    t.string   "handy"
    t.string   "festnetz"
    t.decimal  "az_monat"
    t.decimal  "az_konto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
