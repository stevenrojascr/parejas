class AddParejaLlevoVirgenToEventos < ActiveRecord::Migration
  def self.up
    add_column :eventos, :pareja_llevo_virgen, :integer
  end

  def self.down
    remove_column :eventos, :pareja_llevo_virgen
  end
end
