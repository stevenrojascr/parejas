class AddSelectedToParejas < ActiveRecord::Migration
  def self.up
    add_column :parejas, :selected, :boolean
  end

  def self.down
    remove_column :parejas, :selected
  end
end
