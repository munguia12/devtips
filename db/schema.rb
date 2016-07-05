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

ActiveRecord::Schema.define(version: 20160701194750) do

  create_table "departures", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "numero"
    t.integer  "piezas"
    t.string   "solicita"
    t.string   "autoriza"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "articulos"
  end

  create_table "entradas", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "remision"
    t.integer  "cantidad"
    t.string   "articulo"
    t.text     "refaccion"
    t.string   "recibe"
    t.string   "proveedor"
    t.string   "contacto"
    t.string   "autoriza"
    t.string   "solicta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string   "articulos"
    t.integer  "existencia"
    t.integer  "stockmin"
    t.integer  "stockmax"
    t.boolean  "disponibles"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "salida1s", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "numero"
    t.integer  "articulo_id"
    t.integer  "piezas"
    t.string   "solicita"
    t.string   "autoriza"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["articulo_id"], name: "index_salida1s_on_articulo_id"
  end

  create_table "salidas", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "numero"
    t.integer  "piezas"
    t.string   "articulos"
    t.string   "solicita"
    t.string   "autoriza"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ssalidas", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "numero"
    t.integer  "articulos_id"
    t.integer  "piezas"
    t.integer  "solicita"
    t.integer  "autoriza"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["articulos_id"], name: "index_ssalidas_on_articulos_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "nombre"
    t.string   "puesto"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
