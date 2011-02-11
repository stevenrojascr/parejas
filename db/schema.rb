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

ActiveRecord::Schema.define(:version => 20110208213134) do

  create_table "eventos", :force => true do |t|
    t.string    "codigo"
    t.date      "fecha"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "eventos_parejas", :id => false, :force => true do |t|
    t.integer "evento_id"
    t.integer "pareja_id"
  end

  create_table "parejas", :force => true do |t|
    t.string    "codigo"
    t.string    "nom_el"
    t.string    "nom_ella"
    t.date      "fch_1era_asamblea"
    t.date      "fch_nac_el"
    t.string    "ocupacion_el"
    t.string    "movil_el"
    t.string    "email_el"
    t.date      "fch_nac_ella"
    t.string    "ocupacion_ella"
    t.string    "movil_ella"
    t.string    "email_ella"
    t.date      "fch_matrimonio"
    t.string    "residencia"
    t.string    "tel_casa"
    t.integer   "hijos_vivos"
    t.integer   "perdidas"
    t.string    "invitados_por"
    t.string    "ministerio"
    t.boolean   "retiro1"
    t.boolean   "retiro2"
    t.boolean   "retiro3"
    t.boolean   "retiro4"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "situacion_especial"
    t.boolean   "activo"
    t.string    "foto_file_name"
    t.string    "foto_content_type"
    t.integer   "foto_file_size"
    t.timestamp "foto_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
