class PagesController < ApplicationController
	def index
		redirect_to "/blog"
	end

	def landing
   
    @wod_landing = Workout.where("date <= ?", Date.today).order(:date).last
	
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
	  @staff = Staff.all.order("created_at DESC").reverse
	end

	def blog
		@blogs = Blog.where("date <= ?", Date.today).order("created_at DESC").paginate(:page => params[:page], :per_page => 6)
		@blog_last = Blog.where("date <= ?", Date.today).order(:date).last
	end

	def show
		@blog = Blog.find params[:id]
	end
end
