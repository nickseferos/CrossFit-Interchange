class PagesController < ApplicationController
	require 'httparty'
  def index
    require 'json'
    require 'open-uri'
    @response = HTTParty.get("https://api.tumblr.com/v2/blog/crossfitinterchange.tumblr.com/posts/text?api_key=tWncHp5Q4yob4R9TwF88HznAUUnULGh1vXFRLZc7m3mplvM29t")
    puts @response
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
