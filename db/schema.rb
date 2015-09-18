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

ActiveRecord::Schema.define(version: 20150917140142) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "alerts", force: :cascade do |t|
    t.integer  "priority"
    t.string   "title"
    t.text     "body"
    t.integer  "severity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "benzodiazepines", force: :cascade do |t|
    t.integer  "drug_id"
    t.string   "drug_type"
    t.integer  "valium_equiv"
    t.hstore   "affinity"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cannabinoids", force: :cascade do |t|
    t.hstore   "affinity",    default: {}
    t.string   "full_name",                null: false
    t.text     "description",              null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "drugs", force: :cascade do |t|
    t.string   "primary_name"
    t.string   "other_names",                  array: true
    t.text     "description"
    t.string   "trade_names",                  array: true
    t.integer  "onset"
    t.integer  "half_life"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "actable_id"
    t.string   "actable_type"
    t.string   "articles",                     array: true
    t.string   "fatalities",                   array: true
    t.string   "paper_feed"
    t.string   "report_feed_url"
  end

  create_table "edits", force: :cascade do |t|
    t.integer  "drug_id"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "property"
  end

  create_table "papers", force: :cascade do |t|
    t.string  "title",            null: false
    t.integer "drug_id",          null: false
    t.string  "link",             null: false
    t.text    "abstract",         null: false
    t.integer "publication_date"
  end

  create_table "reports", force: :cascade do |t|
    t.string   "title",      null: false
    t.text     "report",     null: false
    t.string   "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "drug_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string   "link"
    t.integer  "drug_id"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
