class CreateAnnualBudgets < ActiveRecord::Migration
  def self.up
    create_table :annual_budgets do |t|
      t.string :name, :null => false
      t.string :name_sw, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :annual_budgets
  end
end
