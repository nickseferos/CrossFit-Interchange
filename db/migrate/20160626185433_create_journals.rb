class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.datetime :date
      t.string :workout
      t.string :length

      t.timestamps null: false
    end
  end
end
