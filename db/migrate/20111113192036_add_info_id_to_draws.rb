class AddInfoIdToDraws < ActiveRecord::Migration
  def self.up
    add_column :draws, :info_id, :int
  end

  def self.down
    remove_column :draws, :info_id
  end
end
