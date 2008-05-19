class CreateCsosTargetGroups < ActiveRecord::Migration
  def self.up
    create_table :csos_target_groups, :id => false do |t|
      t.references :cso
      t.references :target_group
    end
    add_index :csos_target_groups, :cso_id
    add_index :csos_target_groups, :target_group_id
    add_index :csos_target_groups, [ :cso_id, :target_group_id ], :unique => true
  end

  def self.down
    drop_table :csos_target_groups
  end
end
