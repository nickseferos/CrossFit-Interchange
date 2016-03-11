class CreateFreeTrials < ActiveRecord::Migration
  def change
    create_table :free_trials do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone

      t.timestamps null: false
    end
  end
end
