class CreateCrossFitClasses < ActiveRecord::Migration
  def change
    create_table :cross_fit_classes do |t|

      t.timestamps null: false
    end
  end
end
