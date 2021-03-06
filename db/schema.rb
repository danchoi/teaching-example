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

ActiveRecord::Schema.define(:version => 20120621015111) do

  create_table "alert_methods", :force => true do |t|
    t.string "label"
  end

  create_table "alert_methods_alerts", :force => true do |t|
    t.integer "alert_id",        :null => false
    t.integer "alert_method_id", :null => false
  end

  create_table "alerts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alerts_audiences", :force => true do |t|
    t.integer "alert_id",    :null => false
    t.integer "audience_id", :null => false
  end

  create_table "alerts_sendbacks", :force => true do |t|
    t.integer "alert_id",    :null => false
    t.integer "sendback_id", :null => false
  end

  create_table "audiences", :force => true do |t|
    t.string "label"
  end

  create_table "sendbacks", :force => true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
