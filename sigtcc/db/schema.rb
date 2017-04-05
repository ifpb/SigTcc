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

ActiveRecord::Schema.define(version: 20170402183255) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "alunos", force: :cascade do |t|
    t.string   "matricula"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ata_defesas", force: :cascade do |t|
    t.date     "data"
    t.integer  "banca_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "arquivo_file_name"
    t.string   "arquivo_content_type"
    t.integer  "arquivo_file_size"
    t.datetime "arquivo_updated_at"
    t.index ["banca_id"], name: "index_ata_defesas_on_banca_id"
  end

  create_table "bancas", force: :cascade do |t|
    t.date     "dataApresentacao"
    t.string   "horario"
    t.string   "sala"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "tcc_id"
    t.index ["tcc_id"], name: "index_bancas_on_tcc_id"
  end

  create_table "coordenadors", force: :cascade do |t|
    t.date     "dataInicio"
    t.date     "dataFim"
    t.string   "portaria"
    t.boolean  "ativo"
    t.integer  "professor_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["professor_id"], name: "index_coordenadors_on_professor_id"
  end

  create_table "ficha_avaliacaos", force: :cascade do |t|
    t.date     "data"
    t.integer  "professor_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "banca_id"
    t.string   "arquivo_file_name"
    t.string   "arquivo_content_type"
    t.integer  "arquivo_file_size"
    t.datetime "arquivo_updated_at"
    t.index ["banca_id"], name: "index_ficha_avaliacaos_on_banca_id"
    t.index ["professor_id"], name: "index_ficha_avaliacaos_on_professor_id"
  end

  create_table "palavras", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "palavras_tccs", id: false, force: :cascade do |t|
    t.integer "tcc_id",     null: false
    t.integer "palavra_id", null: false
    t.index ["tcc_id", "palavra_id"], name: "index_palavras_tccs_on_tcc_id_and_palavra_id"
  end

  create_table "plano_atividades", force: :cascade do |t|
    t.date     "dataEntrega"
    t.boolean  "aprovacao"
    t.integer  "tcc_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "arquivo"
    t.index ["tcc_id"], name: "index_plano_atividades_on_tcc_id"
  end

  create_table "pre_bancas", force: :cascade do |t|
    t.date     "dataApresentacao"
    t.string   "horario"
    t.string   "sala"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "proposta_tcc_id"
    t.index ["proposta_tcc_id"], name: "index_pre_bancas_on_proposta_tcc_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string   "siape"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proposta_tccs", force: :cascade do |t|
    t.date     "dataApresentacao"
    t.boolean  "aprovacao"
    t.integer  "aluno_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "arquivo_file_name"
    t.string   "arquivo_content_type"
    t.integer  "arquivo_file_size"
    t.datetime "arquivo_updated_at"
    t.index ["aluno_id"], name: "index_proposta_tccs_on_aluno_id"
  end

  create_table "tccs", force: :cascade do |t|
    t.string   "titulo"
    t.string   "periodo"
    t.boolean  "agendad",              default: false
    t.integer  "tipos",                default: 1
    t.integer  "professor_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "arquivo_file_name"
    t.string   "arquivo_content_type"
    t.integer  "arquivo_file_size"
    t.datetime "arquivo_updated_at"
    t.integer  "proposta_tcc_id"
    t.float    "nota"
    t.string   "status"
    t.index ["professor_id"], name: "index_tccs_on_professor_id"
    t.index ["proposta_tcc_id"], name: "index_tccs_on_proposta_tcc_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email"
    t.boolean  "ativo"
    t.string   "nome"
    t.string   "user_type"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "sexo"
    t.string   "password_digest"
    t.index ["user_type", "user_id"], name: "index_usuarios_on_user_type_and_user_id"
  end

end
