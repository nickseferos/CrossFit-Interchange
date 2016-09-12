class CreateWoTimes < ActiveRecord::Migration
  def change
    create_table :wo_times do |t|

      t.timestamps null: false
    end
  end
end
