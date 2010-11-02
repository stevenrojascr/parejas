class AddSituacionEspecialToPareja < ActiveRecord::Migration
  def self.up
    add_column :parejas, :situacion_especial, :string
  end

  def self.down
    remove_column :parejas, :situacion_especial
  end
end
