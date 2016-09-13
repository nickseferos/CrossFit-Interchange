class AddWoTimeAssociationToWorkouts < ActiveRecord::Migration
  def self.up
  	add_column :wo_times, :workouts_id, :integer, index: true
  end

  def self.down
  	remove_column :wo_times, :workouts_id
  end
end
