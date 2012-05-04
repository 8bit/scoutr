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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120131051042) do

  create_table "chapters", :force => true do |t|
    t.string   "name"
    t.integer  "lodge_id"
    t.integer  "district_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "councils", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "districts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "division_id"
  end

  create_table "divisions", :force => true do |t|
    t.string   "name"
    t.integer  "council_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lodges", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.integer  "council_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memberships", :force => true do |t|
    t.integer  "member_id"
    t.string   "group_type"
    t.integer  "group_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "oa_memberships", :force => true do |t|
    t.integer  "person_id"
    t.integer  "lodge_id"
    t.integer  "chapter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.integer  "BSA_ID"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "title"
    t.string   "suffix"
    t.string   "nickname"
    t.date     "dob"
    t.string   "phone"
    t.string   "email"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.boolean  "admin"
  end

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "unit_type"
  end

  create_table "roundtables", :force => true do |t|
    t.date     "happened_on"
    t.integer  "num_units"
    t.integer  "num_individuals"
    t.string   "email"
    t.integer  "district_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "program_id"
  end

  create_table "units", :force => true do |t|
    t.integer  "number"
    t.integer  "program_id"
    t.integer  "organization_id"
    t.integer  "district_id"
    t.text     "meeting_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
