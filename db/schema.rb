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

ActiveRecord::Schema.define(version: 20150921193225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calls", force: :cascade do |t|
    t.string   "phone_number"
    t.string   "contact_name"
    t.datetime "recieved_at"
    t.boolean  "responded"
    t.boolean  "is_voicemail"
    t.text     "message"
    t.integer  "customer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "calls", ["customer_id"], name: "index_calls_on_customer_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "company_name"
    t.string   "address"
    t.datetime "purchased_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "emails", force: :cascade do |t|
    t.string   "email_address"
    t.string   "email_subject"
    t.text     "email_text"
    t.integer  "customer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "emails", ["customer_id"], name: "index_emails_on_customer_id", using: :btree

  add_foreign_key "calls", "customers"
  add_foreign_key "emails", "customers"
end
