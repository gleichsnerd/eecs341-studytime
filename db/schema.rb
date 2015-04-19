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

ActiveRecord::Schema.define(version: 20150419215251) do

  create_table "courses", force: :cascade do |t|
    t.integer  "cid",        limit: 4,   null: false
    t.string   "cname",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "courses_for_courses", id: false, force: :cascade do |t|
    t.integer "course_id",     limit: 4
    t.integer "for_course_id", limit: 4
  end

  add_index "courses_for_courses", ["course_id", "for_course_id"], name: "index_courses_for_courses_on_course_id_and_for_course_id", using: :btree

  create_table "courses_teaches", id: false, force: :cascade do |t|
    t.integer "course_id", limit: 4
    t.integer "teach_id",  limit: 4
  end

  add_index "courses_teaches", ["course_id", "teach_id"], name: "index_courses_teaches_on_course_id_and_teach_id", using: :btree

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

  create_table "member_student", id: false, force: :cascade do |t|
    t.integer "member_id",  limit: 4
    t.integer "student_id", limit: 4
  end

  create_table "members", force: :cascade do |t|
    t.integer  "sid",        limit: 4, null: false
    t.integer  "gid",        limit: 4
    t.date     "join_date"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "members_students", id: false, force: :cascade do |t|
    t.integer "member_id",  limit: 4
    t.integer "student_id", limit: 4
  end

  add_index "members_students", ["member_id", "student_id"], name: "index_members_students_on_member_id_and_student_id", using: :btree

  create_table "members_study_groups", id: false, force: :cascade do |t|
    t.integer "member_id",      limit: 4
    t.integer "study_group_id", limit: 4
  end

  add_index "members_study_groups", ["member_id", "study_group_id"], name: "index_members_study_groups_on_member_id_and_study_group_id", using: :btree

  create_table "professors", force: :cascade do |t|
    t.integer  "pid",        limit: 4,   null: false
    t.string   "pname",      limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "professors_teaches", id: false, force: :cascade do |t|
    t.integer "professor_id", limit: 4
    t.integer "teach_id",     limit: 4
  end

  add_index "professors_teaches", ["professor_id", "teach_id"], name: "index_professors_teaches_on_professor_id_and_teach_id", using: :btree

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
