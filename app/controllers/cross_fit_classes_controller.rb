class CrossFitClassesController < ApplicationController

	# caches_page :wicf, :cf_schedule, :cf_pricing, :wod

	def wicf
		
	end

	def cf_schedule
		@cf_schedules = CfSchedule.last
	end

	def cf_pricing
		
	end

	def wod
	    @wods = Workout.where('date <= ?', Date.today).order(:date).reverse
	end
	
end
