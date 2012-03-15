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

ActiveRecord::Schema.define(:version => 20120314154708) do

  create_table "abc", :force => true do |t|
    t.string  "profession", :limit => 20
    t.integer "tags_u_id"
  end

  add_index "abc", ["tags_u_id"], :name => "tags_u_id"

  create_table "aditya", :primary_key => "u_id", :force => true do |t|
    t.string  "u_name", :limit => 20
    t.integer "age"
  end

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "scrap", :id => false, :force => true do |t|
    t.string "Desc1",       :limit => 200
    t.string "Desc2",       :limit => 200
    t.string "Ingredients", :limit => 100
    t.string "Method",      :limit => 100
    t.string "Yield",       :limit => 30
  end

  create_table "scraping", :id => false, :force => true do |t|
    t.string "Desc1",       :limit => 30
    t.string "Desc2",       :limit => 30
    t.string "Ingredients", :limit => 30
    t.string "Method",      :limit => 30
    t.string "Yield",       :limit => 30
  end

  create_table "scrapping", :id => false, :force => true do |t|
    t.string "Title",       :limit => 30
    t.string "Description", :limit => 30
    t.string "Ingredients", :limit => 30
    t.string "Method",      :limit => 30
    t.string "Yield",       :limit => 30
  end

  create_table "tags", :primary_key => "u_id", :force => true do |t|
    t.string "name", :limit => 20
  end

  add_index "tags", ["u_id"], :name => "index_u_id", :unique => true

  create_table "test", :id => false, :force => true do |t|
    t.string "Desc1", :limit => 10000
  end

  create_table "users", :force => true do |t|
    t.string   "Name"
    t.string   "Email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
