class GroupClassesController < ApplicationController

	# caches_page :group_classes, :gc_schedule, :gc_pricing

	def index
		@gc = Groupclass.order(:title)
	end

	def gc_schedule
		@gc_schedule = GcSchedule.last
	end

	def gc_pricing
		
	end
end
