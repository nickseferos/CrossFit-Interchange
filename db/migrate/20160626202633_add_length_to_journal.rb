class AddLengthToJournal < ActiveRecord::Migration
  def change
    add_column :journals, :length, :string
  end
end
