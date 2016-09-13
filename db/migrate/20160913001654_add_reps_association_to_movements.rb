class AddRepsAssociationToMovements < ActiveRecord::Migration
  def self.up
  	add_column :reps, :movements_id, :integer, index: true
  end

  def self.down
  	remove_column :reps, :movements_id
  end
end
