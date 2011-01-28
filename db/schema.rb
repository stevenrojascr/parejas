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

ActiveRecord::Schema.define(:version => 20110128050344) do

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

end
