class CreateCsosSectorFocuses < ActiveRecord::Migration
  def self.up
    create_table :csos_sector_focuses, :id => false do |t|
      t.references :cso
      t.references :sector_focus
    end
    add_index :csos_sector_focuses, :cso_id
    add_index :csos_sector_focuses, :sector_focus_id
    add_index :csos_sector_focuses, [ :cso_id, :sector_focus_id ], :unique => true
  end

  def self.down
  end
end
