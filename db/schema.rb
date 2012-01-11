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

ActiveRecord::Schema.define(:version => 20120110235826) do

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

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
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

end
