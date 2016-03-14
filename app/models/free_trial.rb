class FreeTrial < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	validates_format_of :email, with: /@/
end
