class CreateWicfs < ActiveRecord::Migration
  def change
    create_table :wicfs do |t|
      t.text :copy

      t.timestamps null: false
    end
  end
end
