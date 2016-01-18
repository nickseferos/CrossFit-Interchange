class GroupClassesController < ApplicationController

	# caches_page :group_classes, :gc_schedule, :gc_pricing

	def index
		@gc = Groupclass.order(:title)
	end

	def gc_schedule
		
	end

	def gc_pricing
		
	end
end
