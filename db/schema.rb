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

ActiveRecord::Schema.define(:version => 20130510111435) do

  create_table "keys", :force => true do |t|
    t.string   "sp"
    t.string   "public_key_modulus"
    t.string   "public_key_exponent"
    t.string   "private_key_modulus"
    t.string   "private_key_exponent"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "service_provider_id"
    t.integer  "post_id"
    t.string   "name"
    t.string   "author"
    t.text     "description"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "service_providers", :force => true do |t|
    t.string   "name"
    t.string   "adress"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
