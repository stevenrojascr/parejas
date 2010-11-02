class AddActivoToPareja < ActiveRecord::Migration
  def self.up
    add_column :parejas, :activo, :boolean
  end

  def self.down
    remove_column :parejas, :activo
  end
end
