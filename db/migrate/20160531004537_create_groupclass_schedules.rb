class CreateGroupclassSchedules < ActiveRecord::Migration
  def change
    create_table :groupclass_schedules do |t|
      t.string :title
      t.time :start
      t.time :end
      t.date :date
      t.text :description

      t.timestamps null: false
    end
  end
end
