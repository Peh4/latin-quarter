class RemoveAthorFromDraws < ActiveRecord::Migration
  def self.up
    remove_column :draws, :author
  end

  def self.down
    add_column :draws, :author, :string
  end
end
