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

ActiveRecord::Schema.define(version: 20180514054046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cotizclomuls", force: :cascade do |t|
    t.string "correo"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "altura"
    t.string "anchura"
    t.string "material"
    t.string "color"
    t.string "cantidad"
    t.string "confirmacion"
  end

  create_table "cotizesccams", force: :cascade do |t|
    t.string "correo"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "colchon"
    t.string "material"
    t.string "color"
    t.string "cantidad"
    t.string "confirmacion"
  end

  create_table "cotizmescams", force: :cascade do |t|
    t.string "correo"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "colchon"
    t.string "material"
    t.string "color"
    t.string "cajonsuperior"
    t.string "repisa"
    t.string "cantidad"
    t.string "confirmacion"
  end

  create_table "cotizmesexps", force: :cascade do |t|
    t.string "correo"
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "material"
    t.string "color"
    t.string "numeropuestos"
    t.string "cantidad"
    t.string "confirmacion"
  end

  create_table "ordenclomuls", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "fechasolicitud"
    t.date "fechaentrega"
    t.integer "idcotizacion"
    t.string "color"
    t.string "material"
    t.string "correo"
    t.string "nombre"
    t.date "fechacotizacion"
    t.string "cantidad"
  end

  create_table "ordenesccams", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "fechasolicitud"
    t.date "fechaentrega"
    t.integer "idcotizacion"
    t.string "color"
    t.string "material"
    t.string "correo"
    t.string "nombre"
    t.date "fechacotizacion"
    t.string "cantidad"
  end

  create_table "ordenmescams", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "fechasolicitud"
    t.date "fechaentrega"
    t.integer "idcotizacion"
    t.string "color"
    t.string "material"
    t.string "correo"
    t.string "nombre"
    t.date "fechacotizacion"
    t.string "cantidad"
  end

  create_table "ordenmesexps", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "fechasolicitud"
    t.date "fechaentrega"
    t.integer "idcotizacion"
    t.string "color"
    t.string "material"
    t.string "correo"
    t.string "nombre"
    t.date "fechacotizacion"
    t.string "cantidad"
  end

end
