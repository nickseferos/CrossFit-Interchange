class AddValueToReps < ActiveRecord::Migration
  def change
    add_column :reps, :value, :integer
  end
end
