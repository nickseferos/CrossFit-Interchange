class CrossFitClassesController < ApplicationController
	def wicf
		
	end

	def cf_schedule

	end

	def cf_pricing
		
	end

	def wod
    require 'json'
    require 'open-uri'
    response = JSON.parse(HTTParty.get("https://api.tumblr.com/v2/blog/crossfitinterchange.tumblr.com/posts?api_key=tWncHp5Q4yob4R9TwF88HznAUUnULGh1vXFRLZc7m3mplvM29t").body)
    # @hash = response.as_json
    # return response.as_json
    # @title = response[:posts][:title]
    @title = response['response']['posts'][0]['title']
    @body = response['response']['posts'][0]['body']
  end
	
end
