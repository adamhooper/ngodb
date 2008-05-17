class CreateFundingSources < ActiveRecord::Migration
  def self.up
    create_table :funding_sources do |t|
      t.string :name, :null => false
      t.string :name_sw, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :funding_sources
  end
end
