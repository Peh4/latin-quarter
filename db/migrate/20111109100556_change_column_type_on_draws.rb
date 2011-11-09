class ChangeColumnTypeOnDraws < ActiveRecord::Migration
  def self.up
    change_column :draws, :data, :text
  end

  def self.down
    change_column :draws, :data, :string
  end
end
