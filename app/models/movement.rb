class Movement < ActiveRecord::Base
	belongs_to :workout
	has_one :weight
	has_one :rep
end
