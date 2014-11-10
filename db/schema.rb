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

ActiveRecord::Schema.define(version: 20141109133445) do

  create_table "adopcions", force: true do |t|
    t.integer  "numero_adultos"
    t.integer  "numero_ninios"
    t.integer  "numero_perros"
    t.integer  "numero_gatos"
    t.integer  "numero_otros"
    t.string   "referencia_casa"
    t.string   "numero_referencia1"
    t.string   "numero_referencia2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "id_persona"
    t.integer  "id_mascota"
  end

  create_table "hogar_temporals", force: true do |t|
    t.string   "ci"
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "telefono_fijo"
    t.text     "direccion"
    t.string   "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mascota", force: true do |t|
    t.string   "nombre"
    t.string   "especie"
    t.string   "raza"
    t.string   "sexo"
    t.integer  "edad"
    t.string   "color"
    t.string   "estado"
    t.string   "depar"
    t.string   "hexa"
    t.string   "octa"
    t.string   "anti"
    t.string   "esterilizacion"
    t.text     "observacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "noticia", force: true do |t|
    t.string   "titulo"
    t.string   "categoria"
    t.text     "contenido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personas", force: true do |t|
    t.string   "ci"
    t.string   "nombres"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.date     "fecha_nacimiento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rescates", force: true do |t|
    t.string   "direccion_rescate"
    t.text     "observacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "fecha"
    t.string   "voluntario"
  end

  create_table "seguimientos", force: true do |t|
    t.integer  "id_adopcion"
    t.text     "observacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.string   "name"
    t.boolean  "estado"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "veterinaria", force: true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.integer  "telefono"
    t.integer  "movil"
    t.text     "encargado"
    t.boolean  "activo"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "voluntario_mascota", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "id_voluntario"
    t.integer  "id_mascota"
  end

  create_table "voluntario_temporals", force: true do |t|
    t.string   "nombre"
    t.string   "correo"
    t.integer  "telefono"
    t.string   "ocupacion"
    t.boolean  "genero"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "voluntarios", force: true do |t|
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "estado"
    t.integer  "ci"
    t.date     "fecha_nacimiento"
    t.string   "lugar_nacimiento"
    t.integer  "edad"
    t.string   "estado_civil"
    t.string   "direccion"
    t.integer  "telefono_fijo"
    t.integer  "telefono_movil"
    t.string   "email"
    t.integer  "licensia_conducir"
    t.text     "formacion_academica"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
