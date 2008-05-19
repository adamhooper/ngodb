class CreatePastAchievements < ActiveRecord::Migration
  def self.up
    create_table :past_achievements do |t|
      t.integer :cso_id, :null => false
      t.integer :year, :null => false
      t.string :description, :null => false, :default => ''
      t.string :description_sw, :null => false, :default => ''

      t.timestamps
    end
  end

  def self.down
    drop_table :past_achievements
  end
end
