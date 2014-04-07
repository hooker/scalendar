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

ActiveRecord::Schema.define(version: 20140407024721) do

  create_table "available_times", force: true do |t|
    t.integer  "student_id"
    t.integer  "day_id"
    t.integer  "semester_id"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "available_times", ["day_id"], name: "index_available_times_on_day_id", using: :btree
  add_index "available_times", ["semester_id"], name: "index_available_times_on_semester_id", using: :btree
  add_index "available_times", ["student_id"], name: "index_available_times_on_student_id", using: :btree

  create_table "days", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "days", ["name"], name: "index_days_on_name", using: :btree

  create_table "scheduled_times", force: true do |t|
    t.integer  "student_id"
    t.integer  "available_time_id"
    t.integer  "day_id"
    t.integer  "semester_id"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scheduled_times", ["available_time_id"], name: "index_scheduled_times_on_available_time_id", using: :btree
  add_index "scheduled_times", ["day_id"], name: "index_scheduled_times_on_day_id", using: :btree
  add_index "scheduled_times", ["semester_id"], name: "index_scheduled_times_on_semester_id", using: :btree
  add_index "scheduled_times", ["student_id"], name: "index_scheduled_times_on_student_id", using: :btree

  create_table "semesters", force: true do |t|
    t.integer  "position"
    t.integer  "year"
    t.string   "season"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
  end

end
