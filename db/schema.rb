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

ActiveRecord::Schema.define(version: 20150421193502) do

  create_table "courses", force: :cascade do |t|
    t.string   "cname",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "creators", id: false, force: :cascade do |t|
    t.integer  "study_group_id", limit: 4
    t.integer  "course_id",      limit: 4
    t.date     "create_date"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "creators", ["study_group_id", "course_id"], name: "index_creators_on_study_group_id_and_course_id", using: :btree

  create_table "meeting_times", force: :cascade do |t|
    t.integer  "study_group_id", limit: 4
    t.time     "mtime"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "members", id: false, force: :cascade do |t|
    t.integer  "student_id",     limit: 4
    t.integer  "study_group_id", limit: 4
    t.date     "join_date"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "members", ["student_id", "study_group_id"], name: "index_members_on_student_id_and_study_group_id", using: :btree

  create_table "professors", force: :cascade do |t|
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
    t.integer  "course_id",   limit: 4
    t.string   "gname",       limit: 255
    t.string   "description", limit: 255
    t.string   "location",    limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "teaches", id: false, force: :cascade do |t|
    t.integer  "professor_id", limit: 4
    t.integer  "course_id",    limit: 4
    t.string   "semester",     limit: 255
    t.integer  "year",         limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "teaches", ["professor_id", "course_id"], name: "index_teaches_on_professor_id_and_course_id", using: :btree

end
