class CreateCfSchedules < ActiveRecord::Migration
  def self.up
    drop_table :cf_schedules
    create_table :cf_schedules do |t|
      t.text :desktop
      t.text :mobile
      
      t.timestamps
    end
  end

  def self.down
    drop_table :cf_schedules
  end
end