class PagesController < ApplicationController
	def index
		@wods = Wod.find :last
	end

	def about_us
		
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
