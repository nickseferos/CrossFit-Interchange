class AddWorkoutsAssociationToUsers < ActiveRecord::Migration
  def self.up
  	add_column :workouts, :users_id, :integer, index: true
  end

  def self.down
  	remove_column :workouts, :users_id
  end
end
