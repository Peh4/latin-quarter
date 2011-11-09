class CreateDraws < ActiveRecord::Migration
  def self.up
    create_table :draws do |t|
      t.string :author
      t.string :data
      t.boolean :parisien

      t.timestamps
    end
  end

  def self.down
    drop_table :draws
  end
end
