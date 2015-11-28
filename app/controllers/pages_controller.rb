class PagesController < ApplicationController
	require 'httparty'
	cahces_page :contact, :free_trial, :staff
  def index
    require 'json'
    require 'open-uri'
    response = JSON.parse(HTTParty.get("https://api.tumblr.com/v2/blog/crossfitinterchange.tumblr.com/posts?api_key=tWncHp5Q4yob4R9TwF88HznAUUnULGh1vXFRLZc7m3mplvM29t").body)
    # @hash = response.as_json
    # return response.as_json
    # @title = response[:posts][:title]
    @title = response['response']['posts'][0]['title']
    @body = response['response']['posts'][0]['body']

	end

	def about_us
		
	end

	def child_care
		
	end

	def contact
		require 'active_support/time'
		require 'working_hours'
		WorkingHours::Config.working_hours = {
		  :mon => {'05:00' => '07:00', '09:00' => '10:00', '12:00' => '13:00', '17:30' => '22:30'},
	      :tue => {'05:00' => '07:00', '09:00' => '10:00', '17:30' => '19:30'},
		  :wed => {'05:00' => '07:00', '09:00' => '10:00', '12:00' => '13:00', '17:30' => '19:30'},
		  :thu => {'05:00' => '07:00', '09:00' => '10:00', '17:30' => '19:30'},
		  :fri => {'05:00' => '07:00', '09:00' => '10:00', '12:00' => '13:00', '17:30' => '19:30'},
		  :sat => {'08:00' => '10:00'}
	    }
	    WorkingHours::Config.time_zone = 'America/Vancouver'
	    current_time = 6
	status = Time.utc(current_time).in_working_hours?
    case status
    when true
      @status = "We are currently open. Stop by and meet one of the coaches, try a class or sign up for a <a href='/free_trial'> ten-day free trial </a>! Or check out our <a href='/crossfit_schedule'>class schedule</a> to find out when a coach will be in the building. <p class='text-center'>Our address is <a href='https://goo.gl/maps/iLduJMrYqvD2'> 324 Campus Lane Suite E, Fairfield, CA 94534</a>. Look for the large 'CrossFit Interchange' flag."

    when false
      @status = "Currently, nobody is in the building. Check out the <a href='/crossfit_schedule'>class schedule</a> to find out when we're open. </p><p class='text-center'>Our address is <a href='https://goo.gl/maps/iLduJMrYqvD2'> 324 Campus Lane Suite E, Fairfield, CA 94534</a>. Look for the large 'CrossFit Interchange' flag."
    end
		
	end

	def free_trial
		
	end

	def staff
		
	end
end
