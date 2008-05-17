class CreateSectorFocuses < ActiveRecord::Migration
  def self.up
    create_table :sector_focuses do |t|
      t.string :name, :null => false
      t.string :name_sw, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :sector_focuses
  end
end
