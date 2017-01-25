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

ActiveRecord::Schema.define(version: 20170124172942) do

  create_table "alunos", force: :cascade do |t|
    t.string   "nome"
    t.string   "matricula"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string   "nome"
    t.string   "siape"
    t.string   "email"
    t.integer  "tcc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tcc_id"], name: "index_professors_on_tcc_id"
  end

  create_table "tccs", force: :cascade do |t|
    t.string   "titulo"
    t.string   "periodo"
    t.string   "palavras_chaves"
    t.string   "tema"
    t.integer  "tipo",            default: 1
    t.integer  "aluno_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["aluno_id"], name: "index_tccs_on_aluno_id"
  end

end
