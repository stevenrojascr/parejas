class CrearTablaEventosParejas < ActiveRecord::Migration
  def self.up
    create_table :eventos_parejas, :id => false do |t|
      t.integer :evento_id
      t.integer :parejas_id
    end
  end

  def self.down
    drop_table :eventos_parejas
  end
end
