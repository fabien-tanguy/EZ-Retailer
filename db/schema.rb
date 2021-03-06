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

ActiveRecord::Schema.define(:version => 20131209164719) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "focus", :force => true do |t|
    t.text     "description"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.boolean  "photo_active",  :default => false
    t.boolean  "active",        :default => false
    t.string   "type_of_focus", :default => "Nouveauté"
    t.string   "title"
  end

  create_table "focus_photos", :id => false, :force => true do |t|
    t.integer "focu_id"
    t.integer "photo_id"
  end

  create_table "pages", :force => true do |t|
    t.string   "titre_menu"
    t.string   "titre"
    t.string   "photo"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "photos", :force => true do |t|
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image"
  end

  create_table "photos_produits", :id => false, :force => true do |t|
    t.integer "photo_id"
    t.integer "produit_id"
  end

  create_table "photos_promos", :id => false, :force => true do |t|
    t.integer "photo_id"
    t.integer "promo_id"
  end

  create_table "produits", :force => true do |t|
    t.string   "titre"
    t.text     "description"
    t.string   "prix"
    t.boolean  "photo_active",    :default => false
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "type_of_produit", :default => "Produit"
  end

  create_table "promos", :force => true do |t|
    t.text     "description"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.boolean  "photo_active", :default => false
    t.boolean  "active",       :default => false
    t.string   "title"
  end

end
