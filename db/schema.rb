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

ActiveRecord::Schema.define(version: 20180215183346) do

  create_table "assignments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "associates", force: :cascade do |t|
    t.string "name"
    t.integer "codecharge"
    t.datetime "date"
    t.integer "hours"
    t.integer "assignment_id"
    t.integer "timesheet_id"
    t.integer "emp_id"
  end

  create_table "hrmsdata", force: :cascade do |t|
    t.string "associate_name"
    t.integer "associate_id"
    t.integer "assignment_id"
    t.string "job_title"
    t.integer "jon_id"
    t.integer "business_id"
    t.integer "client_id"
    t.string "work_group"
    t.integer "hours"
    t.string "pay_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timesheets", force: :cascade do |t|
    t.string "timesheet_name"
    t.integer "timesheet_id"
    t.string "payroll_name"
    t.string "business_unit"
    t.string "associate_name"
    t.integer "associate_id"
    t.string "job_title"
    t.integer "job_id"
    t.integer "charge_code"
    t.integer "hours_worked"
    t.datetime "date"
    t.integer "assignment_id"
    t.string "work_group"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
  end

end
