class PagesController < ApplicationController
	require 'httparty'
	# cahces_page :contact, :free_trial, :staff

	def landing
   
    @wod_landing = Workout.where("date <= ?", Date.today).last
	
	end

	def about_us
		
	end

	def fitness_challenge
		
	end

	def child_care
		
	end

	def contact

	end

	def free_trial
		
	end

	def staff
		
	end
end
