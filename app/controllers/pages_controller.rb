class PagesController < ApplicationController
	def index
    require 'json'
    require 'open-uri'
    # require 'httparty'
    require 'tumblr_client'
    client = Tumblr::Client.new :consumer_key => 'tWncHp5Q4yob4R9TwF88HznAUUnULGh1vXFRLZc7m3mplvM29t'

    @post = client.posts 'crossfitinterchange.tumblr.com', :type => 'text', :limit => 1, :filter => 'html'
    @post = @post.to_json
    puts @post.class
    @title = @post['blog']['title']


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
