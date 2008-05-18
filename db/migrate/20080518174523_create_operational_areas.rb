class CreateOperationalAreas < ActiveRecord::Migration
  def self.up
    create_table :operational_areas do |t|
      t.string :name
      t.string :name_sw

      t.timestamps
    end
  end

  def self.down
    drop_table :operational_areas
  end
end
