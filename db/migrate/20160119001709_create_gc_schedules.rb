class CreateGcSchedules < ActiveRecord::Migration
  def self.up
    create_table :gc_schedules do |t|
      t.text :desktop
      t.text :mobile
      
      t.timestamps
    end
  end

  def self.down
    drop_table :gc_schedules
  end
end