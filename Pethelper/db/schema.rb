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

ActiveRecord::Schema.define(version: 20190610032352) do

  create_table "animals", force: :cascade do |t|
    t.integer  "casa_abrigo"
    t.string   "tipo"
    t.string   "raca"
    t.float    "tamanho"
    t.integer  "idade"
    t.float    "peso"
    t.string   "sexo"
    t.text     "resumo"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "nome"
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size",    limit: 8
    t.datetime "foto_updated_at"
    t.integer  "status"
  end

  create_table "casa_abrigos", force: :cascade do |t|
    t.string   "nome"
    t.string   "documento"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "email"
    t.string   "site"
    t.string   "dadosBanc"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size",    limit: 8
    t.datetime "foto_updated_at"
  end

  create_table "forms", force: :cascade do |t|
    t.string   "nome"
    t.string   "casa_id"
    t.string   "animal_id"
    t.string   "rg"
    t.string   "telefone"
    t.string   "endereco"
    t.string   "panimal"
    t.string   "qanimal"
    t.string   "tcasa"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "status",     default: 0
  end

  create_table "funcionarios", force: :cascade do |t|
    t.integer  "matricula",       limit: 8
    t.integer  "celular",         limit: 8
    t.string   "nome"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "password_digest"
    t.integer  "role"
    t.integer  "casa_id"
  end

  add_index "funcionarios", ["matricula"], name: "index_funcionarios_on_matricula", unique: true

end
