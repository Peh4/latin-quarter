class ChangeInfosIdTypeOnDraws < ActiveRecord::Migration
  def self.up
    change_column :draws, :info_id, :string
  end

  def self.down
    change_column :draws, :info_id, :int
  end
end
