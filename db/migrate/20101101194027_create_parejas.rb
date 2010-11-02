class CreateParejas < ActiveRecord::Migration
  def self.up
    create_table :parejas do |t|
      t.string :codigo
      t.string :nom_el
      t.string :nom_ella
      t.date :fch_1era_asamblea
      t.date :fch_nac_el
      t.string :ocupacion_el
      t.string :movil_el
      t.string :email_el
      t.date :fch_nac_ella
      t.string :ocupacion_ella
      t.string :movil_ella
      t.string :email_ella
      t.date :fch_matrimonio
      t.string :residencia
      t.string :tel_casa
      t.integer :hijos_vivos
      t.integer :perdidas
      t.string :invitados_por
      t.string :ministerio
      t.boolean :retiro1
      t.boolean :retiro2
      t.boolean :retiro3
      t.boolean :retiro4

      t.timestamps
    end
  end

  def self.down
    drop_table :parejas
  end
end
