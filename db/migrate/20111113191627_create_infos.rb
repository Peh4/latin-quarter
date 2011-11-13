class CreateInfos < ActiveRecord::Migration
  def self.up
    create_table :infos do |t|
      t.string :nom

      t.timestamps
    end
  end

  def self.down
    drop_table :infos
  end
end
