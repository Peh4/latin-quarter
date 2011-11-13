class RemoveParisienFromDraws < ActiveRecord::Migration
  def self.up
    remove_column :draws, :parisien
  end

  def self.down
    add_column :draws, :parisien, :string
  end
end
