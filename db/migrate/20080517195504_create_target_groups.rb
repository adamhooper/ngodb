class CreateTargetGroups < ActiveRecord::Migration
  def self.up
    create_table :target_groups do |t|
      t.string :name, :null => false
      t.string :name_sw, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :target_groups
  end
end
