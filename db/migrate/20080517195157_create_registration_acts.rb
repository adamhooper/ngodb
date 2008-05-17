class CreateRegistrationActs < ActiveRecord::Migration
  def self.up
    create_table :registration_acts do |t|
      t.string :name, :null => false
      t.string :name_sw, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :registration_acts
  end
end
