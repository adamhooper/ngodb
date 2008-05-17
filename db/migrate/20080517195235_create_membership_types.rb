class CreateMembershipTypes < ActiveRecord::Migration
  def self.up
    create_table :membership_types do |t|
      t.string :name, :null => false
      t.string :name_sw, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :membership_types
  end
end
