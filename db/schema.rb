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

ActiveRecord::Schema.define(version: 20151105151024) do

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
    t.decimal  "valium_equiv"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cannabinoids", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dissociatives", force: :cascade do |t|
    t.string   "subtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drugs", force: :cascade do |t|
    t.string   "primary_name"
    t.string   "other_names",                 default: [],                      array: true
    t.text     "description"
    t.string   "trade_names",                 default: [],                      array: true
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.integer  "actable_id"
    t.string   "actable_type"
    t.string   "articles",                    default: [],                      array: true
    t.string   "fatalities",                  default: [],                      array: true
    t.string   "paper_feed"
    t.string   "report_feed_url"
    t.integer  "google_trend_3_months"
    t.integer  "google_trend_6_months"
    t.integer  "google_trend_9_months"
    t.date     "start_date"
    t.decimal  "harm_rating",                 default: 5.0
    t.integer  "harm_votes",                  default: 0
    t.decimal  "addiction_rating",            default: 5.0
    t.integer  "addiction_votes",             default: 0
    t.hstore   "affinity"
    t.string   "full_name"
    t.hstore   "onset",                       default: {}
    t.hstore   "half_life",                   default: {}
    t.string   "class_type",                  default: "drug"
    t.string   "classes",                     default: [],                      array: true
    t.string   "molecule_image_file_name"
    t.string   "molecule_image_content_type"
    t.integer  "molecule_image_file_size"
    t.datetime "molecule_image_updated_at"
    t.string   "molecule_image_source"
    t.string   "side_effects",                default: [],                      array: true
    t.string   "references",                  default: [],                      array: true
    t.string   "solubility",                  default: [],                      array: true
    t.string   "cid"
    t.json     "chemdata"
    t.string   "trends_array"
    t.string   "trends_buy_array"
    t.boolean  "research_chemical",           default: true
    t.string   "effects",                     default: "--- []\n"
  end

  add_index "drugs", ["primary_name"], name: "index_drugs_on_primary_name", using: :btree

  create_table "edits", force: :cascade do |t|
    t.integer  "drug_id"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "property"
  end

  create_table "keywords", force: :cascade do |t|
    t.string   "keyword"
    t.text     "definition"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "localities", force: :cascade do |t|
    t.string   "country_code"
    t.boolean  "legal"
    t.integer  "drug_id"
    t.string   "addition"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "metabolites", force: :cascade do |t|
    t.integer  "drug_id",                   null: false
    t.string   "name",                      null: false
    t.boolean  "active",     default: true, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "opiates", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "papers", force: :cascade do |t|
    t.string  "title",            null: false
    t.integer "drug_id",          null: false
    t.string  "link",             null: false
    t.text    "abstract",         null: false
    t.integer "publication_date"
    t.string  "authors",                       array: true
    t.integer "pmid"
    t.string  "journal"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "tags"
    t.string   "author",     default: "Administrator"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "psychedelics", force: :cascade do |t|
    t.string   "subtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "references", force: :cascade do |t|
    t.integer  "drug_id",          null: false
    t.integer  "reference_number", null: false
    t.string   "reference_url",    null: false
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string   "title",                      null: false
    t.text     "report",                     null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "drug_id"
    t.boolean  "moderated",  default: false, null: false
    t.boolean  "approved",   default: false, null: false
    t.integer  "user_id"
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

  create_table "stimulants", force: :cascade do |t|
    t.string   "subtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",        null: false
    t.string   "encrypted_password",     default: "",        null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,         null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,         null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "user_type",              default: "default"
    t.boolean  "approved",               default: true
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

  create_table "votes", force: :cascade do |t|
    t.integer  "drug_id"
    t.integer  "quantity"
    t.string   "property"
    t.string   "ip_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "hashed"
  end

end
