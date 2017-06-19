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

ActiveRecord::Schema.define(version: 20170525044202) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "house_id"
    t.string   "postcode"
    t.string   "mainaddress"
    t.string   "detailaddress"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "comments", ["house_id"], name: "index_comments_on_house_id"

  create_table "extrainfos", force: :cascade do |t|
    t.integer  "house_id"
    t.string   "managebool"
    t.integer  "managefee"
    t.string   "internet"
    t.string   "television"
    t.string   "cleanfee"
    t.string   "waterfee"
    t.string   "parking"
    t.date     "enterdate"
    t.string   "aircon"
    t.string   "laundary"
    t.string   "pet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "image_attachments", force: :cascade do |t|
    t.integer  "house_id"
    t.string   "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "normalinfos", force: :cascade do |t|
    t.integer  "house_id"
    t.string   "housetype"
    t.string   "dealtype"
    t.integer  "monthlyfee"
    t.integer  "tradefee"
    t.integer  "totalfloor"
    t.integer  "myfloor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "phonenumber"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
