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

ActiveRecord::Schema.define(:version => 20130416220657) do

  create_table "garages", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.datetime "date"
    t.integer  "status"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "garages", ["user_id"], :name => "index_garages_on_user_id"

  create_table "images", :force => true do |t|
    t.text     "url"
    t.string   "title"
    t.integer  "garage_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "images", ["garage_id"], :name => "index_images_on_garage_id"

  create_table "listings", :force => true do |t|
    t.integer  "type_id"
    t.integer  "garage_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "listings", ["garage_id"], :name => "index_listings_on_garage_id"
  add_index "listings", ["type_id"], :name => "index_listings_on_type_id"

  create_table "types", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "icon_url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "salt"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
