class AddWeightAssociationToMovements < ActiveRecord::Migration
  def self.up
  	add_column :weights, :movements_id, :integer
  	add_index 'weights', ['movements_id'], name: 'index_movements_id'
  end

  def self.down
  	remove_column :weights, :movements_id
  end
end
