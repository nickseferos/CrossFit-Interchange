class CreateGroupclasses < ActiveRecord::Migration
  def self.up
    create_table :groupclasses do |t|
      t.string :title
      t.integer :length
      t.text :description
      
      t.timestamps
    end
  end

  def self.down
    drop_table :groupclasses
  end
end