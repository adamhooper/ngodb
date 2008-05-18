class CreateCsos < ActiveRecord::Migration
  def self.up
    create_table :csos do |t|
      t.string :name, :null => false, :default => ''
      t.string :name_sw, :null => false, :default => ''
      t.string :abbreviation, :null => false, :default => ''
      t.string :abbreviation_sw, :null => false, :default => ''
      t.string :mailing_address, :null => false, :default => ''
      t.string :physical_address, :null => false, :default => ''
      t.string :physical_address_sw, :null => false, :default => ''
      t.string :region, :null => false, :default => ''
      t.string :district, :null => false, :default => ''
      t.string :town, :null => false, :default => ''
      t.string :telephone, :null => false, :default => ''
      t.string :mobile, :null => false, :default => ''
      t.string :fax, :null => false, :default => ''
      t.string :email, :null => false, :default => ''
      t.string :website, :null => false, :default => ''
      t.string :head_person, :null => false, :default => ''
      t.string :contact_person, :null => false, :default => ''
      t.string :contact_person_position, :null => false, :default => ''
      t.string :contact_person_position_sw, :null => false, :default => ''
      t.integer :num_staff_male
      t.integer :num_staff_female
      t.integer :num_volunteers_male
      t.integer :num_volunteers_female
      t.string :registration_number, :null => false, :default => ''
      t.integer :registration_year
      t.integer :registration_act_id
      t.string :registration_act_other, :null => false, :default => ''
      t.string :registration_act_other_sw, :null => false, :default => ''
      t.integer :membership_type_id, :null => false
      t.string :networks, :null => false, :default => ''
      t.string :networks_sw, :null => false, :default => ''
      t.integer :annual_budget_id, :null => false
      t.string :grant_funders, :null => false, :default => ''
      t.string :grant_funders_sw, :null => false, :default => ''
      t.integer :operational_area_id, :null => false
      t.string :operational_area_details, :null => false, :default => ''
      t.string :operational_area_details_sw, :null => false, :default => ''
      t.boolean :urban_focus, :null => false
      t.boolean :rural_focus, :null => false
      t.text :mission_statement, :null => false, :default => ''
      t.text :mission_statement_sw, :null => false, :default => ''
      t.text :vision_statement, :null => false, :default => ''
      t.text :vision_statement_sw, :null => false, :default => ''
      t.text :main_objectives, :null => false, :default => ''
      t.text :main_objectives_sw, :null => false, :default => ''

      t.timestamps
    end
  end

  def self.down
    drop_table :csos
  end
end
