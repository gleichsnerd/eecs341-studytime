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

ActiveRecord::Schema.define(version: 20150419194917) do

  create_table "courses", force: :cascade do |t|
    t.integer  "cid",        limit: 4,   null: false
    t.string   "cname",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "creators", force: :cascade do |t|
    t.integer  "sid",         limit: 4, null: false
    t.integer  "gid",         limit: 4
    t.integer  "cid",         limit: 4
    t.date     "create_date"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "for_courses", force: :cascade do |t|
    t.integer  "gid",        limit: 4, null: false
    t.integer  "cid",        limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "meeting_times", force: :cascade do |t|
    t.integer  "gid",        limit: 4, null: false
    t.integer  "mid",        limit: 4, null: false
    t.time     "mtime"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer  "sid",        limit: 4, null: false
    t.integer  "gid",        limit: 4
    t.date     "join_date"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "professors", force: :cascade do |t|
    t.integer  "pid",        limit: 4,   null: false
    t.string   "pname",      limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer  "sid",        limit: 4
    t.string   "sname",      limit: 255
    t.string   "email",      limit: 255
    t.string   "pwd",        limit: 255
    t.string   "token",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "study_groups", force: :cascade do |t|
    t.integer  "gid",         limit: 4,   null: false
    t.string   "gname",       limit: 255
    t.string   "description", limit: 255
    t.string   "location",    limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "teaches", force: :cascade do |t|
    t.integer  "cid",        limit: 4,   null: false
    t.integer  "pid",        limit: 4,   null: false
    t.string   "semester",   limit: 255
    t.integer  "year",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
