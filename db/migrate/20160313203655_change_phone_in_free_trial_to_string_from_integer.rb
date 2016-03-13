class ChangePhoneInFreeTrialToStringFromInteger < ActiveRecord::Migration
  def change
  	remove_column :free_trials, :phone, :integer
  	add_column :free_trials, :phone, :string
  end
end
