class AddMovementAssociationToWorkout < ActiveRecord::Migration
  def self.up
  	add_column :movements, :workouts_id, :integer
  	add_index 'movements', ['workouts_id'], name: 'index_workouts_id'
  end

  def self.down
  	remove_column :movments, :workouts_id
  end
end
