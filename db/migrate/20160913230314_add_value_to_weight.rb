class AddValueToWeight < ActiveRecord::Migration
  def change
    add_column :weights, :value, :integer
  end
end
