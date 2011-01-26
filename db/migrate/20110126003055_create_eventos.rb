class CreateEventos < ActiveRecord::Migration
  def self.up
    create_table :eventos do |t|
      t.string :codigo
      t.date :fecha

      t.timestamps
    end
  end

  def self.down
    drop_table :eventos
  end
end
