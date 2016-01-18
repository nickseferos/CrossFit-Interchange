class CreateStaffs < ActiveRecord::Migration
  def self.up
    create_table :staffs do |t|
      t.string :image
      t.string :name
      t.text :bio
      
      t.timestamps
    end
  end

  def self.down
    drop_table :staffs
  end
end