class ModEventosParejasCampoPareja < ActiveRecord::Migration
  def self.up
    rename_column :eventos_parejas, :parejas_id, :pareja_id
  end

  def self.down
    rename_column :eventos_parejas, :pareja_id, :parejas_id
  end
end
