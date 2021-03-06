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

ActiveRecord::Schema.define(version: 20160411174609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "phone",      limit: 255
    t.string   "cel_phone",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_of_services", force: :cascade do |t|
    t.integer  "number"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "technical_consultant_id"
    t.integer  "status_os"
    t.integer  "productive_id"
  end

  add_index "order_of_services", ["client_id"], name: "index_order_of_services_on_client_id", using: :btree

  create_table "productives", force: :cascade do |t|
    t.integer  "code"
    t.string   "name",       limit: 255
    t.string   "function",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.boolean  "status",                  default: true
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  create_table "schedules", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.integer  "technical_consultant_id"
    t.date     "date_schedule"
    t.time     "hour_schedule"
    t.text     "description_service"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedules", ["technical_consultant_id"], name: "index_schedules_on_technical_consultant_id", using: :btree
  add_index "schedules", ["vehicle_id"], name: "index_schedules_on_vehicle_id", using: :btree

  create_table "technical_consultants", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "cod"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "type_vehicle",  limit: 100
    t.text     "description"
    t.string   "license_plate", limit: 7
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "owner",         limit: 255
    t.integer  "client_id"
  end

  add_foreign_key "products", "categories", name: "products_category_id_fk"
  add_foreign_key "schedules", "technical_consultants", name: "schedules_technical_consultant_id_fk"
  add_foreign_key "schedules", "vehicles", name: "schedules_vehicle_id_fk"
end
